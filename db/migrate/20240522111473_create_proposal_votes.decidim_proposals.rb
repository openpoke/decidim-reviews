# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20170112115253)
<<<<<<< HEAD:db/migrate/20240522111473_create_proposal_votes.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160852_create_proposal_votes.decidim_proposals.rb
class CreateProposalVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :decidim_proposals_proposal_votes do |t|
      t.references :decidim_proposal, null: false, index: { name: "decidim_proposals_proposal_vote_proposal" }
      t.references :decidim_author, null: false, index: { name: "decidim_proposals_proposal_vote_author" }

      t.timestamps
    end

    add_index :decidim_proposals_proposal_votes, [:decidim_proposal_id, :decidim_author_id], unique: true, name: "decidim_proposals_proposal_vote_proposal_author_unique"
  end
end
