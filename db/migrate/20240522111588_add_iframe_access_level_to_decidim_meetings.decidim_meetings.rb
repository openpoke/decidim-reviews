# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20210903143040)
<<<<<<< HEAD:db/migrate/20240522111588_add_iframe_access_level_to_decidim_meetings.decidim_meetings.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160958_add_iframe_access_level_to_decidim_meetings.decidim_meetings.rb
class AddIframeAccessLevelToDecidimMeetings < ActiveRecord::Migration[6.0]
  def change
    add_column :decidim_meetings_meetings, :iframe_access_level, :integer, default: 0
  end
end
