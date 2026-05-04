# frozen_string_literal: true

# This migration comes from decidim (originally 20181115102958)
<<<<<<< HEAD:db/migrate/20240522111264_add_following_and_followers_counters_to_users.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160659_add_following_and_followers_counters_to_users.decidim.rb
class AddFollowingAndFollowersCountersToUsers < ActiveRecord::Migration[5.2]
  def up
    add_column :decidim_users, :following_count, :integer, null: false, default: 0
    add_column :decidim_users, :following_users_count, :integer, null: false, default: 0
    add_column :decidim_users, :followers_count, :integer, null: false, default: 0
  end

  def down
    remove_column :decidim_users, :following_count
    remove_column :decidim_users, :following_users_count
    remove_column :decidim_users, :followers_count
  end
end
