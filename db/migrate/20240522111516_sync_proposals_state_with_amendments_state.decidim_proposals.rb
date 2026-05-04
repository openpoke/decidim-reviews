# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20200212120110)
<<<<<<< HEAD:db/migrate/20240522111516_sync_proposals_state_with_amendments_state.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160895_sync_proposals_state_with_amendments_state.decidim_proposals.rb
class SyncProposalsStateWithAmendmentsState < ActiveRecord::Migration[5.2]
  def up
    execute <<-SQL.squish
      UPDATE decidim_proposals_proposals AS proposals
      SET state = amendments.state
      FROM decidim_amendments AS amendments
      WHERE
        proposals.state IS NULL AND
        amendments.decidim_emendation_type = 'Decidim::Proposals::Proposal' AND
        amendments.decidim_emendation_id = proposals.id AND
        amendments.state IS NOT NULL
    SQL
  end

  def down
    execute <<-SQL.squish
      UPDATE decidim_proposals_proposals AS proposals
      SET state = NULL
      FROM decidim_amendments AS amendments
      WHERE
        amendments.decidim_emendation_type = 'Decidim::Proposals::Proposal' AND
        amendments.decidim_emendation_id = proposals.id AND
        amendments.state IS NOT NULL
    SQL
  end
end
