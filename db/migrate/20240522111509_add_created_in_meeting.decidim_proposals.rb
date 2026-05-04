# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20181026073215)
<<<<<<< HEAD:db/migrate/20240522111509_add_created_in_meeting.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160888_add_created_in_meeting.decidim_proposals.rb
class AddCreatedInMeeting < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_proposals_proposals, :created_in_meeting, :boolean, default: false
  end
end
