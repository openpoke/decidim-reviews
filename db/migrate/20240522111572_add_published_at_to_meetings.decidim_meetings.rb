# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20210413050756)
<<<<<<< HEAD:db/migrate/20240522111572_add_published_at_to_meetings.decidim_meetings.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160942_add_published_at_to_meetings.decidim_meetings.rb
class AddPublishedAtToMeetings < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_meetings_meetings, :published_at, :datetime, index: true
  end
end
