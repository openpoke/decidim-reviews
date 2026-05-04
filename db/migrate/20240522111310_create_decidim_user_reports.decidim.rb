# frozen_string_literal: true

# This migration comes from decidim (originally 20201010124756)
<<<<<<< HEAD:db/migrate/20240522111310_create_decidim_user_reports.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160705_create_decidim_user_reports.decidim.rb
class CreateDecidimUserReports < ActiveRecord::Migration[5.2]
  def change
    create_table :decidim_user_reports do |t|
      t.integer :user_moderation_id, foreign_key: true
      t.integer :user_id, null: false
      t.string :reason
      t.text :details

      t.timestamps
    end
    add_foreign_key :decidim_user_reports, :decidim_user_moderations, column: :user_moderation_id
    add_foreign_key :decidim_user_reports, :decidim_users, column: :user_id
  end
end
