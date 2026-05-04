# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20210415163339)
<<<<<<< HEAD:db/migrate/20240522111425_allow_null_file_column_in_decidim_attachments_table.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160806_allow_null_file_column_in_decidim_attachments_table.decidim_participatory_processes.rb
class AllowNullFileColumnInDecidimAttachmentsTable < ActiveRecord::Migration[6.0]
  def change
    change_column_null :decidim_attachments, :file, true
  end
end
