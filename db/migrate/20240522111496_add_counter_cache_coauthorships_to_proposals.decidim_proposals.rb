# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20180529101323)
<<<<<<< HEAD:db/migrate/20240522111496_add_counter_cache_coauthorships_to_proposals.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160875_add_counter_cache_coauthorships_to_proposals.decidim_proposals.rb
class AddCounterCacheCoauthorshipsToProposals < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_proposals_proposals, :coauthorships_count, :integer, null: false, default: 0
    add_index :decidim_proposals_proposals, :coauthorships_count, name: "idx_decidim_proposals_proposals_on_proposal_coauthorships_count"
  end
end
