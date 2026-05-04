# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20171201122623)
<<<<<<< HEAD:db/migrate/20240522111488_add_counter_cache_endorsements_to_proposals.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160867_add_counter_cache_endorsements_to_proposals.decidim_proposals.rb
class AddCounterCacheEndorsementsToProposals < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_proposals_proposals, :proposal_endorsements_count, :integer, null: false, default: 0
    add_index :decidim_proposals_proposals, :proposal_endorsements_count, name: "idx_decidim_proposals_proposals_on_proposal_endorsemnts_count"
  end
end
