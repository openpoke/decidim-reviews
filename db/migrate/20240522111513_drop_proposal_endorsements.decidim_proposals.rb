# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20200120230130)
<<<<<<< HEAD:db/migrate/20240522111513_drop_proposal_endorsements.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160892_drop_proposal_endorsements.decidim_proposals.rb
class DropProposalEndorsements < ActiveRecord::Migration[5.2]
  def change
    drop_table :decidim_proposals_proposal_endorsements, if_exists: true, force: :restrict
    remove_column :decidim_proposals_proposals, :proposal_endorsements_count
  end
end
