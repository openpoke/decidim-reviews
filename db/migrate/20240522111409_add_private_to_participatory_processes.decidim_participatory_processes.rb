# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20180122110007)
<<<<<<< HEAD:db/migrate/20240522111409_add_private_to_participatory_processes.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160790_add_private_to_participatory_processes.decidim_participatory_processes.rb
class AddPrivateToParticipatoryProcesses < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_participatory_processes, :private_space, :boolean, default: false
  end
end
