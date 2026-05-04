# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20180419132104)
<<<<<<< HEAD:db/migrate/20240522111552_create_decidim_agenda_items.decidim_meetings.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160922_create_decidim_agenda_items.decidim_meetings.rb
class CreateDecidimAgendaItems < ActiveRecord::Migration[5.1]
  def change
    create_table :decidim_meetings_agenda_items do |t|
      t.references :decidim_agenda, index: true
      t.integer :position
      t.references :parent, index: true
      t.integer :duration
      t.jsonb :title
      t.jsonb :description

      t.timestamps
    end
  end
end
