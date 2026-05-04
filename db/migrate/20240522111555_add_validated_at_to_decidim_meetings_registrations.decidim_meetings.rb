# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20180711111023)
<<<<<<< HEAD:db/migrate/20240522111555_add_validated_at_to_decidim_meetings_registrations.decidim_meetings.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160925_add_validated_at_to_decidim_meetings_registrations.decidim_meetings.rb
class AddValidatedAtToDecidimMeetingsRegistrations < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_meetings_registrations, :validated_at, :datetime
  end
end
