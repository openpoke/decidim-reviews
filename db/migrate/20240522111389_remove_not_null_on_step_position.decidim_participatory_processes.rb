# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20161107152228)
<<<<<<< HEAD:db/migrate/20240522111389_remove_not_null_on_step_position.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160770_remove_not_null_on_step_position.decidim_participatory_processes.rb
class RemoveNotNullOnStepPosition < ActiveRecord::Migration[5.0]
  def change
    change_column :decidim_participatory_process_steps, :position, :integer, null: true
  end
end
