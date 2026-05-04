# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20170215132030)
<<<<<<< HEAD:db/migrate/20240522111481_add_reference_to_proposals.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160860_add_reference_to_proposals.decidim_proposals.rb
class AddReferenceToProposals < ActiveRecord::Migration[5.0]
  class Proposal < ApplicationRecord
    self.table_name = :decidim_proposals_proposals
  end

  def change
    add_column :decidim_proposals_proposals, :reference, :string
    Proposal.find_each(&:save)
    change_column_null :decidim_proposals_proposals, :reference, false
  end
end
