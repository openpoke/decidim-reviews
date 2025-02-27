# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20250214110525)
class AddWaitlistEnabledToDecidimMeetings < ActiveRecord::Migration[7.0]
  def change
    add_column :decidim_meetings_meetings, :waitlist_enabled, :boolean, default: false, null: false
  end
end
