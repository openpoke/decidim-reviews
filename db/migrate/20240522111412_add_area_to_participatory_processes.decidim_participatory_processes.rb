# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20190322125517)
<<<<<<< HEAD:db/migrate/20240522111412_add_area_to_participatory_processes.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160793_add_area_to_participatory_processes.decidim_participatory_processes.rb
class AddAreaToParticipatoryProcesses < ActiveRecord::Migration[5.2]
  def change
    add_reference :decidim_participatory_processes, :decidim_area, index: true
  end
end
