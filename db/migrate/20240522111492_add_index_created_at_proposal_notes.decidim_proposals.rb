# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20180115155220)
<<<<<<< HEAD:db/migrate/20240522111492_add_index_created_at_proposal_notes.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160871_add_index_created_at_proposal_notes.decidim_proposals.rb
class AddIndexCreatedAtProposalNotes < ActiveRecord::Migration[5.1]
  def change
    add_index :decidim_proposals_proposal_notes, :created_at
  end
end
