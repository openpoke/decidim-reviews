# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20180419131924)
<<<<<<< HEAD:db/migrate/20240522111551_create_decidim_agendas.decidim_meetings.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160921_create_decidim_agendas.decidim_meetings.rb
class CreateDecidimAgendas < ActiveRecord::Migration[5.1]
  def change
    create_table :decidim_meetings_agendas do |t|
      t.jsonb :title
      t.references :decidim_meeting, null: false, index: true
      t.boolean :visible

      t.timestamps
    end
  end
end
