# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20180711075004)
<<<<<<< HEAD:db/migrate/20240522111501_remove_index_counter_cache_coauthorships_to_proposals.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160880_remove_index_counter_cache_coauthorships_to_proposals.decidim_proposals.rb
class RemoveIndexCounterCacheCoauthorshipsToProposals < ActiveRecord::Migration[5.2]
  def change
    remove_index :decidim_proposals_proposals, name: "idx_decidim_proposals_proposals_on_proposal_coauthorships_count"
  end
end
