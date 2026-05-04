# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20210430123416)
<<<<<<< HEAD:db/migrate/20240522111574_add_public_participation_to_decidim_meetings_registrations.decidim_meetings.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160944_add_public_participation_to_decidim_meetings_registrations.decidim_meetings.rb
class AddPublicParticipationToDecidimMeetingsRegistrations < ActiveRecord::Migration[6.0]
  def change
    add_column :decidim_meetings_registrations, :public_participation, :boolean, default: false
  end
end
