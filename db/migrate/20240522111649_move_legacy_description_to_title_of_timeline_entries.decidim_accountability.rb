# frozen_string_literal: true

# This migration comes from decidim_accountability (originally 20220331150155)
<<<<<<< HEAD:db/migrate/20240522111649_move_legacy_description_to_title_of_timeline_entries.decidim_accountability.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161017_move_legacy_description_to_title_of_timeline_entries.decidim_accountability.rb
class MoveLegacyDescriptionToTitleOfTimelineEntries < ActiveRecord::Migration[6.1]
  class TimelineEntry < ApplicationRecord
    self.table_name = :decidim_accountability_timeline_entries
  end

  def up
    TimelineEntry.find_each do |timeline_entry|
      timeline_entry.update!(title: timeline_entry.description, description: nil)
    end
  end
end
