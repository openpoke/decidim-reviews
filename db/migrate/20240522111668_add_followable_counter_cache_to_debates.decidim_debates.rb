# frozen_string_literal: true

# This migration comes from decidim_debates (originally 20210310120652)
<<<<<<< HEAD:db/migrate/20240522111668_add_followable_counter_cache_to_debates.decidim_debates.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161036_add_followable_counter_cache_to_debates.decidim_debates.rb
class AddFollowableCounterCacheToDebates < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_debates_debates, :follows_count, :integer, null: false, default: 0, index: true

    reversible do |dir|
      dir.up do
        Decidim::Debates::Debate.reset_column_information
        Decidim::Debates::Debate.unscoped.find_each do |record|
          record.class.reset_counters(record.id, :follows)
        end
      end
    end
  end
end
