# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20210217124802)
<<<<<<< HEAD:db/migrate/20240522111570_add_registration_custom_content_to_meetings.decidim_meetings.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160940_add_registration_custom_content_to_meetings.decidim_meetings.rb
class AddRegistrationCustomContentToMeetings < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_meetings_meetings, :customize_registration_email, :boolean, default: false, null: false
    add_column :decidim_meetings_meetings, :registration_email_custom_content, :jsonb
  end
end
