# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20170206083118)
<<<<<<< HEAD:db/migrate/20240522111396_rename_extra_info_on_processes.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160777_rename_extra_info_on_processes.decidim_participatory_processes.rb
class RenameExtraInfoOnProcesses < ActiveRecord::Migration[5.0]
  def change
    remove_column :decidim_participatory_processes, :developer_group

    rename_column :decidim_participatory_processes, :domain, :developer_group

    add_column :decidim_participatory_processes, :local_area, :jsonb
    add_column :decidim_participatory_processes, :target, :jsonb
    add_column :decidim_participatory_processes, :participatory_scope, :jsonb
    add_column :decidim_participatory_processes, :participatory_structure, :jsonb
  end
end
