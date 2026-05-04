# frozen_string_literal: true

# This migration comes from decidim (originally 20201010224433)
<<<<<<< HEAD:db/migrate/20240522111311_add_suspension_fields_to_decidim_users.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160706_add_suspension_fields_to_decidim_users.decidim.rb
class AddSuspensionFieldsToDecidimUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_users, :suspended, :boolean, default: false, null: false
    add_column :decidim_users, :suspended_at, :datetime
  end
end
