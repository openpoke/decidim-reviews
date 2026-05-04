# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20210519133705)
<<<<<<< HEAD:db/migrate/20240522111579_add_comments_availability_columns_to_meetings_table.decidim_meetings.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160949_add_comments_availability_columns_to_meetings_table.decidim_meetings.rb
class AddCommentsAvailabilityColumnsToMeetingsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :decidim_meetings_meetings, :comments_enabled, :boolean, default: true
    add_column :decidim_meetings_meetings, :comments_start_time, :datetime
    add_column :decidim_meetings_meetings, :comments_end_time, :datetime
    reversible do |dir|
      dir.up do
        execute "UPDATE decidim_meetings_meetings set comments_enabled = true"
      end
    end
  end
end
