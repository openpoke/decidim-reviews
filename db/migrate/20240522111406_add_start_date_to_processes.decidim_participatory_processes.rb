# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20170830081725)
<<<<<<< HEAD:db/migrate/20240522111406_add_start_date_to_processes.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160787_add_start_date_to_processes.decidim_participatory_processes.rb
class AddStartDateToProcesses < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_participatory_processes, :start_date, :date
    ActiveRecord::Base.connection.execute("UPDATE decidim_participatory_processes SET start_date = created_at")
  end
end
