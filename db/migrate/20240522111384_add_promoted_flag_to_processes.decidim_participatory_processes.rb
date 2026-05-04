# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20161013134732)
<<<<<<< HEAD:db/migrate/20240522111384_add_promoted_flag_to_processes.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160765_add_promoted_flag_to_processes.decidim_participatory_processes.rb
class AddPromotedFlagToProcesses < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_participatory_processes, :promoted, :boolean, default: false, index: true
  end
end
