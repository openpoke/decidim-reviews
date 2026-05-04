# frozen_string_literal: true

# This migration comes from decidim (originally 20201010124755)
<<<<<<< HEAD:db/migrate/20240522111309_create_decidim_user_moderations.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160704_create_decidim_user_moderations.decidim.rb
class CreateDecidimUserModerations < ActiveRecord::Migration[5.2]
  def change
    create_table :decidim_user_moderations do |t|
      t.belongs_to :decidim_user, foreign_key: true
      t.integer :report_count, default: 0, null: false

      t.timestamps
    end
  end
end
