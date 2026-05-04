# frozen_string_literal: true

# This migration comes from decidim (originally 20170720135441)
<<<<<<< HEAD:db/migrate/20240522111192_add_managed_to_users.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160587_add_managed_to_users.decidim.rb
class AddManagedToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_users, :managed, :boolean, null: false, default: false
  end
end
