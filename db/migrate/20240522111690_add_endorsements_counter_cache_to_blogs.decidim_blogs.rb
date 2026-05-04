# frozen_string_literal: true

# This migration comes from decidim_blogs (originally 20200128094730)
<<<<<<< HEAD:db/migrate/20240522111690_add_endorsements_counter_cache_to_blogs.decidim_blogs.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161058_add_endorsements_counter_cache_to_blogs.decidim_blogs.rb
class AddEndorsementsCounterCacheToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_blogs_posts, :endorsements_count, :integer, null: false, default: 0
  end
end
