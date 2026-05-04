# frozen_string_literal: true

# This migration comes from decidim_sortitions (originally 20200827154036)
<<<<<<< HEAD:db/migrate/20240522111685_add_commentable_counter_cache_to_sortitions.decidim_sortitions.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161053_add_commentable_counter_cache_to_sortitions.decidim_sortitions.rb
class AddCommentableCounterCacheToSortitions < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_sortitions_sortitions, :comments_count, :integer, null: false, default: 0, index: true
    Decidim::Sortitions::Sortition.reset_column_information
    Decidim::Sortitions::Sortition.find_each(&:update_comments_count)
  end
end
