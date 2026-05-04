# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20210310120812)
<<<<<<< HEAD:db/migrate/20240522111525_add_followable_counter_cache_to_collaborative_drafts.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160904_add_followable_counter_cache_to_collaborative_drafts.decidim_proposals.rb
class AddFollowableCounterCacheToCollaborativeDrafts < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_proposals_collaborative_drafts, :follows_count, :integer, null: false, default: 0, index: true

    reversible do |dir|
      dir.up do
        Decidim::Proposals::CollaborativeDraft.reset_column_information
        Decidim::Proposals::CollaborativeDraft.find_each do |record|
          record.class.reset_counters(record.id, :follows)
        end
      end
    end
  end
end
