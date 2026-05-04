# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20210727085318)
<<<<<<< HEAD:db/migrate/20240522111587_add_state_field_to_meeting.decidim_meetings.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160957_add_state_field_to_meeting.decidim_meetings.rb
class AddStateFieldToMeeting < ActiveRecord::Migration[6.0]
  def change
    add_column :decidim_meetings_meetings, :state, :string, index: true
  end
end
