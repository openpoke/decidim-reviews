# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20201006140511)
<<<<<<< HEAD:db/migrate/20240522111565_add_online_meeting_url.decidim_meetings.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160935_add_online_meeting_url.decidim_meetings.rb
class AddOnlineMeetingUrl < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_meetings_meetings, :online_meeting_url, :string
  end
end
