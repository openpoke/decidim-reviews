# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20250121110904)
# This file has been modified by `decidim upgrade:migrations` task on 2026-07-14 10:06:53 UTC
class RenameValuationAssignmentsCountToEvaluationAssignmentsCount < ActiveRecord::Migration[7.0]
  def change
    rename_column :decidim_proposals_proposals, :valuation_assignments_count, :evaluation_assignments_count

    reversible do |dir|
      dir.up do
        Decidim::Proposals::Proposal.reset_column_information
        Decidim::Proposals::Proposal.unscoped.find_each do |record|
          Decidim::Proposals::Proposal.unscoped.reset_counters(record.id, :evaluation_assignments)
        end
      end
    end
  end
end
