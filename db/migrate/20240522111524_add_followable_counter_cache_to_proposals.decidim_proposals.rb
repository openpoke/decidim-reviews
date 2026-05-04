# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20210310102839)
<<<<<<< HEAD:db/migrate/20240522111524_add_followable_counter_cache_to_proposals.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160903_add_followable_counter_cache_to_proposals.decidim_proposals.rb
class AddFollowableCounterCacheToProposals < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_proposals_proposals, :follows_count, :integer, null: false, default: 0, index: true

    reversible do |dir|
      dir.up do
        Decidim::Proposals::Proposal.reset_column_information
        Decidim::Proposals::Proposal.unscoped.find_each do |record|
          record.class.reset_counters(record.id, :follows)
        end
      end
    end
  end
end
