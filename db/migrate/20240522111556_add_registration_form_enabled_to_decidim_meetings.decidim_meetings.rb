# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20180801150031)
<<<<<<< HEAD:db/migrate/20240522111556_add_registration_form_enabled_to_decidim_meetings.decidim_meetings.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160926_add_registration_form_enabled_to_decidim_meetings.decidim_meetings.rb
class AddRegistrationFormEnabledToDecidimMeetings < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_meetings_meetings, :registration_form_enabled, :boolean, default: false
  end
end
