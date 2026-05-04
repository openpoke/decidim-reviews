# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20200320105908)
<<<<<<< HEAD:db/migrate/20240522111415_index_foreign_keys_in_decidim_attachments.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160796_index_foreign_keys_in_decidim_attachments.decidim_participatory_processes.rb
class IndexForeignKeysInDecidimAttachments < ActiveRecord::Migration[5.2]
  def change
    add_index :decidim_attachments, :attachment_collection_id
  end
end
