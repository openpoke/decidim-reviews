# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20210512055802)
<<<<<<< HEAD:db/migrate/20240522111576_create_decidim_meetings_polls.decidim_meetings.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160946_create_decidim_meetings_polls.decidim_meetings.rb
class CreateDecidimMeetingsPolls < ActiveRecord::Migration[6.0]
  def change
    create_table :decidim_meetings_polls do |t|
      t.references :decidim_meeting, index: true
      t.timestamps
    end
  end
end
