# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20170221094835)
<<<<<<< HEAD:db/migrate/20240522111398_add_scopes_to_processes.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160779_add_scopes_to_processes.decidim_participatory_processes.rb
class AddScopesToProcesses < ActiveRecord::Migration[5.0]
  def change
    rename_column :decidim_participatory_processes, :scope, :meta_scope
    add_column :decidim_participatory_processes, :decidim_scope_id, :integer
  end
end
