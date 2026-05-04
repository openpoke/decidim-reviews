# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20170808080905)
<<<<<<< HEAD:db/migrate/20240522111404_add_announcement_to_participatory_processes.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160785_add_announcement_to_participatory_processes.decidim_participatory_processes.rb
class AddAnnouncementToParticipatoryProcesses < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_participatory_processes, :announcement, :jsonb
  end
end
