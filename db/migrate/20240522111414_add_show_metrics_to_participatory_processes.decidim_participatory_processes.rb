# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20200204154917)
<<<<<<< HEAD:db/migrate/20240522111414_add_show_metrics_to_participatory_processes.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160795_add_show_metrics_to_participatory_processes.decidim_participatory_processes.rb
class AddShowMetricsToParticipatoryProcesses < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_participatory_processes, :show_metrics, :boolean, default: true
  end
end
