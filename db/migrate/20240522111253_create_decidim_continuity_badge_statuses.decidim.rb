# frozen_string_literal: true

# This migration comes from decidim (originally 20181010044613)
<<<<<<< HEAD:db/migrate/20240522111253_create_decidim_continuity_badge_statuses.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160648_create_decidim_continuity_badge_statuses.decidim.rb
class CreateDecidimContinuityBadgeStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :decidim_continuity_badge_statuses do |t|
      t.integer :current_streak, :integer, null: false, default: 0
      t.date :last_session_at, null: false
      t.references :subject, null: false, polymorphic: true, index: { name: "decidim_continuity_statuses_subject" }
    end
  end
end
