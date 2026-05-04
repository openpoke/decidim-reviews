# frozen_string_literal: true

# This migration comes from decidim (originally 20191028135718)
<<<<<<< HEAD:db/migrate/20240522111280_add_lockable_to_users.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160675_add_lockable_to_users.decidim.rb
class AddLockableToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_users, :failed_attempts, :integer, default: 0, null: false # Only if lock strategy is :failed_attempts
    add_column :decidim_users, :unlock_token, :string # Only if unlock strategy is :email or :both
    add_column :decidim_users, :locked_at, :datetime
    add_index :decidim_users, :unlock_token, unique: true
  end
end
