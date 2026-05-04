# frozen_string_literal: true

# This migration comes from decidim_pages (originally 20161116121353)
<<<<<<< HEAD:db/migrate/20240522111450_create_decidim_pages.decidim_pages.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160830_create_decidim_pages.decidim_pages.rb
class CreateDecidimPages < ActiveRecord::Migration[5.0]
  def change
    create_table :decidim_pages_pages do |t|
      t.jsonb :title
      t.jsonb :body
      t.references :decidim_feature, index: true

      t.timestamps
    end
  end
end
