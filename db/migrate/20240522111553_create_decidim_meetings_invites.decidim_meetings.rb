# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20180607142020)
<<<<<<< HEAD:db/migrate/20240522111553_create_decidim_meetings_invites.decidim_meetings.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160923_create_decidim_meetings_invites.decidim_meetings.rb
class CreateDecidimMeetingsInvites < ActiveRecord::Migration[5.2]
  def change
    create_table :decidim_meetings_invites do |t|
      t.references :decidim_user, null: false, index: true
      t.references :decidim_meeting, null: false, index: true
      t.datetime :sent_at
      t.datetime :accepted_at
      t.datetime :rejected_at

      t.timestamps
    end
  end
end
