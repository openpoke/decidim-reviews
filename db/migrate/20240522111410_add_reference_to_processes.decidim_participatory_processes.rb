# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20180125102537)
<<<<<<< HEAD:db/migrate/20240522111410_add_reference_to_processes.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160791_add_reference_to_processes.decidim_participatory_processes.rb
class AddReferenceToProcesses < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_participatory_processes, :reference, :string
  end
end
