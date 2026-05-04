# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20171215081244)
<<<<<<< HEAD:db/migrate/20240522111407_add_weight_to_attachments.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160788_add_weight_to_attachments.decidim_participatory_processes.rb
class AddWeightToAttachments < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_attachments, :weight, :integer, null: false, default: 0
  end
end
