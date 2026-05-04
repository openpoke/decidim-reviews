# frozen_string_literal: true

# This migration comes from decidim_blogs (originally 20171129131353)
<<<<<<< HEAD:db/migrate/20240522111686_create_decidim_blogs_posts.decidim_blogs.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161054_create_decidim_blogs_posts.decidim_blogs.rb
class CreateDecidimBlogsPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :decidim_blogs_posts do |t|
      t.jsonb :title
      t.jsonb :body
      t.references :decidim_component, index: true
      t.timestamps
    end
  end
end
