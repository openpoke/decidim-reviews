# frozen_string_literal: true

# This migration comes from decidim (originally 20170605140421)
<<<<<<< HEAD:db/migrate/20240522111183_add_deleted_fields_to_users.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160578_add_deleted_fields_to_users.decidim.rb
class AddDeletedFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_users, :delete_reason, :text
    add_column :decidim_users, :deleted_at, :datetime
  end
end
