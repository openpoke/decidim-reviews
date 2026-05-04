# frozen_string_literal: true

# This migration comes from decidim (originally 20190610093742)
<<<<<<< HEAD:db/migrate/20240522111277_add_force_users_to_authenticate_before_access_organization.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160672_add_force_users_to_authenticate_before_access_organization.decidim.rb
class AddForceUsersToAuthenticateBeforeAccessOrganization < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_organizations,
               :force_users_to_authenticate_before_access_organization,
               :boolean,
               default: false
  end
end
