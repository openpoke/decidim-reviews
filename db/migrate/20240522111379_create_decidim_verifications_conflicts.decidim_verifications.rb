# frozen_string_literal: true

# This migration comes from decidim_verifications (originally 20201028161118)
<<<<<<< HEAD:db/migrate/20240522111379_create_decidim_verifications_conflicts.decidim_verifications.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160760_create_decidim_verifications_conflicts.decidim_verifications.rb
class CreateDecidimVerificationsConflicts < ActiveRecord::Migration[5.2]
  def change
    create_table :decidim_verifications_conflicts do |t|
      t.references :current_user, index: { name: "authorization_current_user" }, foreign_key: { to_table: :decidim_users }
      t.references :managed_user, index: { name: "authorization_managed_user" }, foreign_key: { to_table: :decidim_users }
      t.integer :times, default: 0
      t.string :unique_id
      t.boolean :solved, default: false

      t.timestamps
    end
  end
end
