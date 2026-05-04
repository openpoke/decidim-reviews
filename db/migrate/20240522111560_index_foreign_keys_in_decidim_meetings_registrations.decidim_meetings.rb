# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20200320105922)
<<<<<<< HEAD:db/migrate/20240522111560_index_foreign_keys_in_decidim_meetings_registrations.decidim_meetings.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160930_index_foreign_keys_in_decidim_meetings_registrations.decidim_meetings.rb
class IndexForeignKeysInDecidimMeetingsRegistrations < ActiveRecord::Migration[5.2]
  def change
    add_index :decidim_meetings_registrations, :decidim_user_group_id
  end
end
