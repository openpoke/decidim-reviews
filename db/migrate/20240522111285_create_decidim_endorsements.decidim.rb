# frozen_string_literal: true

# This migration comes from decidim (originally 20191130151925)
<<<<<<< HEAD:db/migrate/20240522111285_create_decidim_endorsements.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160680_create_decidim_endorsements.decidim.rb
class CreateDecidimEndorsements < ActiveRecord::Migration[5.2]
  def change
    create_table :decidim_endorsements do |t|
      t.references :resource, polymorphic: true
      t.references :decidim_author, polymorphic: true, index: { name: "idx_endorsements_authors" }
      t.integer :decidim_user_group_id, foreign_key: true
      t.timestamps
      t.index [:resource_type, :resource_id, :decidim_author_type, :decidim_author_id, :decidim_user_group_id], name: "idx_endorsements_rsrcs_and_authors", unique: true
    end
  end
end
