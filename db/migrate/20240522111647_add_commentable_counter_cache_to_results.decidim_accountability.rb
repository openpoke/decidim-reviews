# frozen_string_literal: true

# This migration comes from decidim_accountability (originally 20200827154103)
<<<<<<< HEAD:db/migrate/20240522111647_add_commentable_counter_cache_to_results.decidim_accountability.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161015_add_commentable_counter_cache_to_results.decidim_accountability.rb
class AddCommentableCounterCacheToResults < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_accountability_results, :comments_count, :integer, null: false, default: 0, index: true
    Decidim::Accountability::Result.reset_column_information
    Decidim::Accountability::Result.unscoped.find_each(&:update_comments_count)
  end
end
