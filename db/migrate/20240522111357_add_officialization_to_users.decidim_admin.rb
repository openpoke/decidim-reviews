# frozen_string_literal: true

# This migration comes from decidim_admin (originally 20171219154507)
<<<<<<< HEAD:db/migrate/20240522111357_add_officialization_to_users.decidim_admin.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160742_add_officialization_to_users.decidim_admin.rb
class AddOfficializationToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_users, :officialized_at, :datetime
    add_column :decidim_users, :officialized_as, :jsonb

    add_index :decidim_users, :officialized_at
  end
end
