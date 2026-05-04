# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20161019072016)
<<<<<<< HEAD:db/migrate/20240522111386_add_active_flag_to_step.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160767_add_active_flag_to_step.decidim_participatory_processes.rb
class AddActiveFlagToStep < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_participatory_process_steps, :active, :boolean, default: false

    add_index :decidim_participatory_process_steps,
              [:decidim_participatory_process_id, :active],
              unique: true,
              where: "active = 't'",
              name: "unique_index_to_avoid_duplicate_active_steps"
  end
end
