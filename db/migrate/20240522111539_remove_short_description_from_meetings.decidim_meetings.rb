# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20170129153716)
<<<<<<< HEAD:db/migrate/20240522111539_remove_short_description_from_meetings.decidim_meetings.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160909_remove_short_description_from_meetings.decidim_meetings.rb
class RemoveShortDescriptionFromMeetings < ActiveRecord::Migration[5.0]
  def change
    remove_column :decidim_meetings_meetings, :short_description
  end
end
