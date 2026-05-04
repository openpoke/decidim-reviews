# frozen_string_literal: true

# This migration comes from decidim (originally 20170119145359)
<<<<<<< HEAD:db/migrate/20240522111158_create_user_groups.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160553_create_user_groups.decidim.rb
class CreateUserGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :decidim_user_groups do |t|
      t.string :name, null: false
      t.string :document_number, null: false
      t.string :phone, null: false

      t.timestamps
    end
  end
end
