# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20250206105632)
class AddReminderCustomizationToDecidimMeetings < ActiveRecord::Migration[7.0]
  def change
    add_column :decidim_meetings_meetings, :reminder_enabled, :boolean, default: false
    add_column :decidim_meetings_meetings, :send_reminders_before_hours, :integer
    add_column :decidim_meetings_meetings, :reminder_message_custom_content, :jsonb, default: {}, null: false
  end
end
