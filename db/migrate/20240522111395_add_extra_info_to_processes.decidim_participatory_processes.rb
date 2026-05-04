# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20170126151123)
<<<<<<< HEAD:db/migrate/20240522111395_add_extra_info_to_processes.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160776_add_extra_info_to_processes.decidim_participatory_processes.rb
class AddExtraInfoToProcesses < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_participatory_processes, :domain, :jsonb
    add_column :decidim_participatory_processes, :end_date, :date
    add_column :decidim_participatory_processes, :developer_group, :string
    add_column :decidim_participatory_processes, :scope, :jsonb
  end
end
