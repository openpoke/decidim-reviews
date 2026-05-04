# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20170809084005)
<<<<<<< HEAD:db/migrate/20240522111405_add_scopes_enabled_to_participatory_processes.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160786_add_scopes_enabled_to_participatory_processes.decidim_participatory_processes.rb
class AddScopesEnabledToParticipatoryProcesses < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_participatory_processes, :scopes_enabled, :boolean, null: false, default: true
  end
end
