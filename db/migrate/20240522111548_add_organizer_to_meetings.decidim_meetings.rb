# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20180404075312)
<<<<<<< HEAD:db/migrate/20240522111548_add_organizer_to_meetings.decidim_meetings.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160918_add_organizer_to_meetings.decidim_meetings.rb
class AddOrganizerToMeetings < ActiveRecord::Migration[5.1]
  def change
    add_reference :decidim_meetings_meetings, :organizer, index: true
  end
end
