# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20180403145218)
<<<<<<< HEAD:db/migrate/20240522111547_add_meeting_types.decidim_meetings.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160917_add_meeting_types.decidim_meetings.rb
class AddMeetingTypes < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_meetings_meetings, :private_meeting, :boolean, default: false
    add_column :decidim_meetings_meetings, :transparent, :boolean, default: true
  end
end
