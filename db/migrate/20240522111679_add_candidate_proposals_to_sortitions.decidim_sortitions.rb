# frozen_string_literal: true

# This migration comes from decidim_sortitions (originally 20180104145344)
<<<<<<< HEAD:db/migrate/20240522111679_add_candidate_proposals_to_sortitions.decidim_sortitions.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161047_add_candidate_proposals_to_sortitions.decidim_sortitions.rb
class AddCandidateProposalsToSortitions < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_module_sortitions_sortitions, :candidate_proposals, :jsonb
  end
end
