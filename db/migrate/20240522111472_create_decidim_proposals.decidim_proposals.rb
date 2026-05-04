# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20161212110850)
<<<<<<< HEAD:db/migrate/20240522111472_create_decidim_proposals.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160851_create_decidim_proposals.decidim_proposals.rb
class CreateDecidimProposals < ActiveRecord::Migration[5.0]
  def change
    create_table :decidim_proposals_proposals do |t|
      t.text :title, null: false
      t.text :body, null: false
      t.references :decidim_feature, index: true, null: false
      t.references :decidim_author, index: true
      t.references :decidim_category, index: true
      t.references :decidim_scope, index: true

      t.timestamps
    end
  end
end
