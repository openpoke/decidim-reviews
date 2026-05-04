# frozen_string_literal: true

# This migration comes from decidim_blogs (originally 20210310120514)
<<<<<<< HEAD:db/migrate/20240522111693_add_followable_counter_cache_to_blogs.decidim_blogs.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161061_add_followable_counter_cache_to_blogs.decidim_blogs.rb
class AddFollowableCounterCacheToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_blogs_posts, :follows_count, :integer, null: false, default: 0, index: true

    reversible do |dir|
      dir.up do
        Decidim::Blogs::Post.reset_column_information
        Decidim::Blogs::Post.unscoped.find_each do |record|
          record.class.reset_counters(record.id, :follows)
        end
      end
    end
  end
end
