# frozen_string_literal: true

# This migration comes from decidim_accountability (originally 20170623144902)
<<<<<<< HEAD:db/migrate/20240522111641_add_children_counter_cache_to_results.decidim_accountability.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161009_add_children_counter_cache_to_results.decidim_accountability.rb
class AddChildrenCounterCacheToResults < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_accountability_results, :children_count, :integer, default: 0
  end
end
