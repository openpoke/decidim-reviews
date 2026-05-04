# frozen_string_literal: true

# This migration comes from decidim (originally 20201011074641)
<<<<<<< HEAD:db/migrate/20240522111312_create_decidim_user_suspensions.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160707_create_decidim_user_suspensions.decidim.rb
class CreateDecidimUserSuspensions < ActiveRecord::Migration[5.2]
  def change
    create_table :decidim_user_suspensions do |t|
      t.belongs_to :decidim_user, foreign_key: true
      t.integer :suspending_user_id
      t.text :justification

      t.timestamps
    end
    add_foreign_key :decidim_user_suspensions, :decidim_users, column: :suspending_user_id
  end
end
