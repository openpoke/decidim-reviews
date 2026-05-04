# frozen_string_literal: true

# This migration comes from decidim (originally 20171207182729)
<<<<<<< HEAD:db/migrate/20240522111212_create_decidim_attachment_collections.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160607_create_decidim_attachment_collections.decidim.rb
class CreateDecidimAttachmentCollections < ActiveRecord::Migration[5.1]
  def change
    create_table :decidim_attachment_collections do |t|
      t.jsonb :name, null: false
      t.jsonb :description, null: false
      t.integer :weight, null: false, default: 0
      t.references :collection_for, polymorphic: true, null: false, index: { name: "decidim_attachment_collections_collection_for_id_and_type" }
    end
  end
end
