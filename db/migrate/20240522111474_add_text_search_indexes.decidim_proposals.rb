# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20170113114245)
<<<<<<< HEAD:db/migrate/20240522111474_add_text_search_indexes.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160853_add_text_search_indexes.decidim_proposals.rb
class AddTextSearchIndexes < ActiveRecord::Migration[5.0]
  def change
    add_index :decidim_proposals_proposals, :title, name: "decidim_proposals_proposal_title_search"
    add_index :decidim_proposals_proposals, :body, name: "decidim_proposals_proposal_body_search"
  end
end
