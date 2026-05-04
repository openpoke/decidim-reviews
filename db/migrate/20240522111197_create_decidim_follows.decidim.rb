# frozen_string_literal: true

# This migration comes from decidim (originally 20170807123535)
<<<<<<< HEAD:db/migrate/20240522111197_create_decidim_follows.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160592_create_decidim_follows.decidim.rb
class CreateDecidimFollows < ActiveRecord::Migration[5.1]
  def change
    create_table :decidim_follows do |t|
      t.references :decidim_user, null: false
      t.references :decidim_followable, polymorphic: true, index: false
      t.timestamps
    end

    add_index :decidim_follows,
              [:decidim_user_id, :decidim_followable_id, :decidim_followable_type],
              unique: true,
              name: "index_uniq_on_follows_user_and_followable"
    add_index :decidim_follows,
              [:decidim_followable_id, :decidim_followable_type],
              unique: true,
              name: "index_uniq_on_followable"
  end
end
