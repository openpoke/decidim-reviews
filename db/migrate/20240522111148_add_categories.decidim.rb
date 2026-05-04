# frozen_string_literal: true

# This migration comes from decidim (originally 20161123085134)
<<<<<<< HEAD:db/migrate/20240522111148_add_categories.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160543_add_categories.decidim.rb
class AddCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :decidim_categories do |t|
      t.jsonb :name, null: false
      t.jsonb :description, null: false
      t.integer :parent_id, index: true
      t.integer :decidim_participatory_process_id, index: true
    end
  end
end
