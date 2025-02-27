# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20250214113208)
class AddStatusToRegistrationsToDecidimMeetingsRegistrations < ActiveRecord::Migration[7.0]
  def change
    add_column :decidim_meetings_registrations, :status, :string, default: "registered", null: false
    add_index :decidim_meetings_registrations, :status
  end
end
