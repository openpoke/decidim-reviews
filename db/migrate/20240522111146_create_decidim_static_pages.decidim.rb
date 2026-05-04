# frozen_string_literal: true

# This migration comes from decidim (originally 20161108093802)
<<<<<<< HEAD:db/migrate/20240522111146_create_decidim_static_pages.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160541_create_decidim_static_pages.decidim.rb
class CreateDecidimStaticPages < ActiveRecord::Migration[5.0]
  def change
    create_table :decidim_static_pages do |t|
      t.jsonb :title, null: false
      t.string :slug, null: false
      t.jsonb :content, null: false
      t.references :decidim_organization, foreign_key: true, index: true
      t.timestamps
    end
  end
end
