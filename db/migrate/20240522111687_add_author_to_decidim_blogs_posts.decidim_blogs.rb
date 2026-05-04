# frozen_string_literal: true

# This migration comes from decidim_blogs (originally 20171211084630)
<<<<<<< HEAD:db/migrate/20240522111687_add_author_to_decidim_blogs_posts.decidim_blogs.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161055_add_author_to_decidim_blogs_posts.decidim_blogs.rb
class AddAuthorToDecidimBlogsPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_blogs_posts, :decidim_author_id, :integer, index: true
  end
end
