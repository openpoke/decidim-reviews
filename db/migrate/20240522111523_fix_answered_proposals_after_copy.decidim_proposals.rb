# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20210127115628)
<<<<<<< HEAD:db/migrate/20240522111523_fix_answered_proposals_after_copy.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160902_fix_answered_proposals_after_copy.decidim_proposals.rb
class FixAnsweredProposalsAfterCopy < ActiveRecord::Migration[5.2]
  def change
    proposals_after_copy = Decidim::ResourceLink.where(from_type: "Decidim::Proposals::Proposal").pluck(:from_id)

    result = Decidim::Proposals::Proposal.where.not(state_published_at: nil).where(state: nil, id: proposals_after_copy)

    result.find_each do |proposal|
      proposal.state_published_at = nil
      proposal.save!
    end
  end
end
