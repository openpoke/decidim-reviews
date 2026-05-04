# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20171215141722)
<<<<<<< HEAD:db/migrate/20240522111408_add_attachment_collection_to_attachments.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160789_add_attachment_collection_to_attachments.decidim_participatory_processes.rb
class AddAttachmentCollectionToAttachments < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_attachments, :attachment_collection_id, :integer, null: true, index: { name: "index_decidim_attachments_attachment_collection_id" }
    add_foreign_key :decidim_attachments, :decidim_attachment_collections, column: :attachment_collection_id, on_delete: :nullify,
                                                                           name: "fk_decidim_attachments_attachment_collection_id"
  end
end
