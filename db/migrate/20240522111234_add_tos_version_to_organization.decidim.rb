# frozen_string_literal: true

# This migration comes from decidim (originally 20180508111640)
<<<<<<< HEAD:db/migrate/20240522111234_add_tos_version_to_organization.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160629_add_tos_version_to_organization.decidim.rb
class AddTosVersionToOrganization < ActiveRecord::Migration[5.1]
  class Organization < ApplicationRecord
    self.table_name = :decidim_organizations
  end

  def up
    add_column :decidim_organizations, :tos_version, :datetime
    Organization.find_each do |organization|
      tos_version = Decidim::StaticPage.find_by(slug: ["terms-and-conditions", "terms-of-service"], organization:).updated_at
      organization.update(tos_version:)
    end
  end

  def down
    remove_columns :decidim_organizations, :tos_version
  end
end
