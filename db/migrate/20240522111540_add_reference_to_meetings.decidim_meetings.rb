# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20170215132546)
<<<<<<< HEAD:db/migrate/20240522111540_add_reference_to_meetings.decidim_meetings.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160910_add_reference_to_meetings.decidim_meetings.rb
class AddReferenceToMeetings < ActiveRecord::Migration[5.0]
  class Meeting < ApplicationRecord
    self.table_name = :decidim_meetings_meetings
  end

  def change
    add_column :decidim_meetings_meetings, :reference, :string
    Meeting.find_each(&:save)
    change_column_null :decidim_meetings_meetings, :reference, false
  end
end
