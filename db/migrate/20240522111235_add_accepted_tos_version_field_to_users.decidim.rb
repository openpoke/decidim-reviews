# frozen_string_literal: true

# This migration comes from decidim (originally 20180508111710)
<<<<<<< HEAD:db/migrate/20240522111235_add_accepted_tos_version_field_to_users.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160630_add_accepted_tos_version_field_to_users.decidim.rb
class AddAcceptedTosVersionFieldToUsers < ActiveRecord::Migration[5.1]
  class Organization < ApplicationRecord
    self.table_name = :decidim_organizations
    has_many :users, foreign_key: "decidim_organization_id", class_name: "Decidim::User", dependent: :destroy
  end

  class User < ApplicationRecord
    self.table_name = :decidim_users
    belongs_to :organization, foreign_key: "decidim_organization_id", class_name: "Decidim::Organization"
  end

  def up
    add_column :decidim_users, :accepted_tos_version, :datetime
    Organization.find_each do |organization|
      # rubocop:disable Rails/SkipsModelValidations
      organization.users.update_all(accepted_tos_version: organization.tos_version)
      # rubocop:enable Rails/SkipsModelValidations
    end
  end

  def down
    remove_columns :decidim_users, :accepted_tos_version
  end
end
