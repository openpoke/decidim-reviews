# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20161017085822)
<<<<<<< HEAD:db/migrate/20240522111385_add_participatory_process_steps.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160766_add_participatory_process_steps.decidim_participatory_processes.rb
class AddParticipatoryProcessSteps < ActiveRecord::Migration[5.0]
  def change
    create_table :decidim_participatory_process_steps do |t|
      t.jsonb :title, null: false
      t.jsonb :short_description, null: false
      t.jsonb :description, null: false
      t.datetime :start_date
      t.datetime :end_date
      t.references :decidim_participatory_process,
                   foreign_key: true,
                   index: { name: "index_decidim_processes_steps__on_decidim_process_id" }

      t.timestamps
    end
  end
end
