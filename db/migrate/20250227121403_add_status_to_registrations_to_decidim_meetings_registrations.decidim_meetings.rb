# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20250408071941)
# This file has been modified by `decidim upgrade:migrations` task on 2025-05-08 14:27:30 UTC
class AddStatusToRegistrationsToDecidimMeetingsRegistrations < ActiveRecord::Migration[7.0]
  def change
    add_column :decidim_meetings_registrations, :status, :string, default: "registered"
    add_index :decidim_meetings_registrations, :status
  end
end
