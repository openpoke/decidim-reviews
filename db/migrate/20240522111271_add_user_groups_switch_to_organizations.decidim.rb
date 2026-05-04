# frozen_string_literal: true

# This migration comes from decidim (originally 20181218171503)
<<<<<<< HEAD:db/migrate/20240522111271_add_user_groups_switch_to_organizations.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160666_add_user_groups_switch_to_organizations.decidim.rb
class AddUserGroupsSwitchToOrganizations < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_organizations, :user_groups_enabled, :boolean, null: false, default: false
    execute "UPDATE decidim_organizations set user_groups_enabled = true"
  end
end
