# frozen_string_literal: true

# This migration comes from decidim (originally 20170119150255)
<<<<<<< HEAD:db/migrate/20240522111159_create_user_group_memberships.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160554_create_user_group_memberships.decidim.rb
class CreateUserGroupMemberships < ActiveRecord::Migration[5.0]
  def change
    create_table :decidim_user_group_memberships do |t|
      t.references :decidim_user, null: false, index: true
      t.references :decidim_user_group, null: false, index: true

      t.timestamps
    end

    add_index :decidim_user_group_memberships, [:decidim_user_id, :decidim_user_group_id], unique: true, name: "decidim_user_group_memberships_unique_user_and_group_ids"
  end
end
