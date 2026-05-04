# frozen_string_literal: true

# This migration comes from decidim (originally 20161010085443)
<<<<<<< HEAD:db/migrate/20240522111143_add_name_to_users.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160538_add_name_to_users.decidim.rb
class AddNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_users, :name, :string, null: false
  end
end
