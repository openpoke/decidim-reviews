# frozen_string_literal: true

# This migration comes from decidim_blogs (originally 20200320105910)
<<<<<<< HEAD:db/migrate/20240522111691_index_foreign_keys_in_decidim_blogs_posts.decidim_blogs.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161059_index_foreign_keys_in_decidim_blogs_posts.decidim_blogs.rb
class IndexForeignKeysInDecidimBlogsPosts < ActiveRecord::Migration[5.2]
  def change
    add_index :decidim_blogs_posts, :decidim_user_group_id
  end
end
