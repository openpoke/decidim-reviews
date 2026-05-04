# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20201111133246)
<<<<<<< HEAD:db/migrate/20240522111569_add_salt_to_decidim_meetings.decidim_meetings.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160939_add_salt_to_decidim_meetings.decidim_meetings.rb
class AddSaltToDecidimMeetings < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_meetings_meetings, :salt, :string
    # we leave old entries empty to maintain the old pad reference
  end
end
