# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20201016112641)
<<<<<<< HEAD:db/migrate/20240522111568_add_registration_type_and_url_to_meetings.decidim_meetings.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160938_add_registration_type_and_url_to_meetings.decidim_meetings.rb
class AddRegistrationTypeAndUrlToMeetings < ActiveRecord::Migration[5.2]
  class Meetings < ApplicationRecord
    self.table_name = :decidim_meetings_meetings
    include Decidim::HasComponent
  end

  def change
    add_column :decidim_meetings_meetings, :registration_type, :string, null: false, default: "registration_disabled"
    add_column :decidim_meetings_meetings, :registration_url, :string

    Meetings.reset_column_information
    Meetings.find_each do |meeting|
      meeting.registration_type = "on_this_platform" if meeting.decidim_author_type == "Decidim::Organization"
      meeting.save!
    end
  end
end
