# frozen_string_literal: true

# This migration comes from decidim_assemblies (originally 20210310120444)
<<<<<<< HEAD:db/migrate/20240522111447_add_followable_counter_cache_to_assemblies.decidim_assemblies.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160827_add_followable_counter_cache_to_assemblies.decidim_assemblies.rb
class AddFollowableCounterCacheToAssemblies < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_assemblies, :follows_count, :integer, null: false, default: 0, index: true

    reversible do |dir|
      dir.up do
        Decidim::Assembly.reset_column_information
        Decidim::Assembly.unscoped.find_each do |record|
          record.class.reset_counters(record.id, :follows)
        end
      end
    end
  end
end
