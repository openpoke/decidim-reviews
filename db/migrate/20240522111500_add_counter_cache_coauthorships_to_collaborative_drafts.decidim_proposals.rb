# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20180711074134)
<<<<<<< HEAD:db/migrate/20240522111500_add_counter_cache_coauthorships_to_collaborative_drafts.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160879_add_counter_cache_coauthorships_to_collaborative_drafts.decidim_proposals.rb
class AddCounterCacheCoauthorshipsToCollaborativeDrafts < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_proposals_collaborative_drafts, :coauthorships_count, :integer, null: false, default: 0
  end
end
