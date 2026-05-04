# frozen_string_literal: true

# This migration comes from decidim_verifications (originally 20171030133426)
<<<<<<< HEAD:db/migrate/20240522111377_move_authorizations_to_new_api.decidim_verifications.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160758_move_authorizations_to_new_api.decidim_verifications.rb
#
# Assumes to authorizations in the old format (as rectify form classes) will be
# registered as the underscored class name using the new API. For example, a
# previous
#
# ```
# config.authorization_handlers = ["Decidim::ExampleCensusHandler"]
# ```
#
# will now be
#
# ```
# Decidim::Verifications.register_workflow(:example_census_handler) do |auth|
#   auth.form = "Decidim::ExampleCensusHandler"
# end
# ```
#
class MoveAuthorizationsToNewApi < ActiveRecord::Migration[5.1]
  class Organization < ApplicationRecord
    self.table_name = :decidim_organizations
  end

  class Component < ApplicationRecord
    self.table_name = :decidim_components
  end

  def up
    Organization.find_each do |organization|
      migrated_authorizations = organization.available_authorizations.map do |authorization|
        authorization.demodulize.underscore
      end

      organization.update!(available_authorizations: migrated_authorizations)
    end

    Component.find_each do |component|
      next if component.permissions.nil?

      component.permissions.transform_values! do |value|
        next if value.nil?

        {
          "authorization_handler_name" => value["authorization_handler_name"]&.classify&.demodulize&.underscore,
          "options" => value["options"]
        }
      end

      component.save!
    end
  end

  def down
    Organization.find_each do |organization|
      migrated_authorizations = organization.available_authorizations.map do |authorization|
        Decidim::Verifications.find_workflow_manifest(authorization).form
      end

      organization.update!(available_authorizations: migrated_authorizations)
    end

    Component.find_each do |component|
      component.permissions.transform_values! do |value|
        workflow = Decidim::Verifications.find_workflow_manifest(value)

        workflow.form.underscore
      end

      component.save!
    end
  end
end
