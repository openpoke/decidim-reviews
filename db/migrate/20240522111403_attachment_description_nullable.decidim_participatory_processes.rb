# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20170804125402)
<<<<<<< HEAD:db/migrate/20240522111403_attachment_description_nullable.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160784_attachment_description_nullable.decidim_participatory_processes.rb
class AttachmentDescriptionNullable < ActiveRecord::Migration[5.1]
  def change
    change_column :decidim_attachments, :description, :jsonb, null: true
  end
end
