# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20210310120750)
<<<<<<< HEAD:db/migrate/20240522111424_add_followable_counter_cache_to_participatory_processes.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160805_add_followable_counter_cache_to_participatory_processes.decidim_participatory_processes.rb
class AddFollowableCounterCacheToParticipatoryProcesses < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_participatory_processes, :follows_count, :integer, null: false, default: 0, index: true

    reversible do |dir|
      dir.up do
        Decidim::ParticipatoryProcess.reset_column_information
        Decidim::ParticipatoryProcess.unscoped.find_each do |record|
          record.class.reset_counters(record.id, :follows)
        end
      end
    end
  end
end
