# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20180615160839)
<<<<<<< HEAD:db/migrate/20240522111554_add_code_to_decidim_meetings_registrations.decidim_meetings.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160924_add_code_to_decidim_meetings_registrations.decidim_meetings.rb
class AddCodeToDecidimMeetingsRegistrations < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_meetings_registrations, :code, :string, index: true
  end
end
