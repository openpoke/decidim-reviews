# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20170123151650)
<<<<<<< HEAD:db/migrate/20240522111538_add_latitude_and_longitude_to_meetings.decidim_meetings.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160908_add_latitude_and_longitude_to_meetings.decidim_meetings.rb
class AddLatitudeAndLongitudeToMeetings < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_meetings_meetings, :latitude, :float
    add_column :decidim_meetings_meetings, :longitude, :float
  end
end
