# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20170205082832)
<<<<<<< HEAD:db/migrate/20240522111478_add_index_to_decidim_proposals_proposals_proposal_votes_count.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160857_add_index_to_decidim_proposals_proposals_proposal_votes_count.decidim_proposals.rb
class AddIndexToDecidimProposalsProposalsProposalVotesCount < ActiveRecord::Migration[5.0]
  def change
    add_index :decidim_proposals_proposals, :proposal_votes_count
    add_index :decidim_proposals_proposals, :created_at
    add_index :decidim_proposals_proposals, :state
  end
end
