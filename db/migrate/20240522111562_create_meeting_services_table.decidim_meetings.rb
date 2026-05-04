# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20200702123209)
<<<<<<< HEAD:db/migrate/20240522111562_create_meeting_services_table.decidim_meetings.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160932_create_meeting_services_table.decidim_meetings.rb
class CreateMeetingServicesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :decidim_meetings_services do |t|
      t.jsonb :title
      t.jsonb :description
      t.bigint :decidim_meeting_id, null: false, index: true

      t.timestamps
    end
  end
end
