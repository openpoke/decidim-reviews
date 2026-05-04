# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20170404132616)
<<<<<<< HEAD:db/migrate/20240522111400_change_steps_end_and_start_date_to_date.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160781_change_steps_end_and_start_date_to_date.decidim_participatory_processes.rb
class ChangeStepsEndAndStartDateToDate < ActiveRecord::Migration[5.0]
  def change
    change_column :decidim_participatory_process_steps, :start_date, :date
    change_column :decidim_participatory_process_steps, :end_date, :date
  end
end
