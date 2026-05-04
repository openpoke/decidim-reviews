# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20170118120151)
<<<<<<< HEAD:db/migrate/20240522111475_add_counter_cache_votes_to_proposals.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160854_add_counter_cache_votes_to_proposals.decidim_proposals.rb
class AddCounterCacheVotesToProposals < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_proposals_proposals, :proposal_votes_count, :integer, null: false, default: 0
  end
end
