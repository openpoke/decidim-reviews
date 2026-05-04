# frozen_string_literal: true

# This migration comes from decidim (originally 20170720140610)
<<<<<<< HEAD:db/migrate/20240522111193_set_email_unique_in_organization_condition_for_managed_users.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160588_set_email_unique_in_organization_condition_for_managed_users.decidim.rb
class SetEmailUniqueInOrganizationConditionForManagedUsers < ActiveRecord::Migration[5.1]
  def change
    remove_index :decidim_users, %w(email decidim_organization_id)
    add_index :decidim_users,
              %w(email decidim_organization_id),
              where: "(deleted_at IS NULL) AND (managed = 'f')",
              name: "index_decidim_users_on_email_and_decidim_organization_id",
              unique: true
  end
end
