# frozen_string_literal: true

# This migration comes from decidim_blogs (originally 20200827153709)
<<<<<<< HEAD:db/migrate/20240522111692_add_commentable_counter_cache_to_posts.decidim_blogs.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161060_add_commentable_counter_cache_to_posts.decidim_blogs.rb
class AddCommentableCounterCacheToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_blogs_posts, :comments_count, :integer, null: false, default: 0, index: true
    Decidim::Blogs::Post.reset_column_information
    Decidim::Blogs::Post.unscoped.find_each(&:update_comments_count)
  end
end
