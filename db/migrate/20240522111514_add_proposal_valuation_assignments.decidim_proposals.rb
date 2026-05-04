# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20200203111239)
<<<<<<< HEAD:db/migrate/20240522111514_add_proposal_valuation_assignments.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160893_add_proposal_valuation_assignments.decidim_proposals.rb
class AddProposalValuationAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :decidim_proposals_valuation_assignments do |t|
      t.references :decidim_proposal, null: false, index: { name: "decidim_proposals_valuation_assignment_proposal" }
      t.references :valuator_role, polymorphic: true, null: false, index: { name: "decidim_proposals_valuation_assignment_valuator_role" }

      t.timestamps
    end
  end
end
