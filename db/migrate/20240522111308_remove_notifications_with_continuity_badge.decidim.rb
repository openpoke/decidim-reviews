# frozen_string_literal: true

# This migration comes from decidim (originally 20201004160335)
<<<<<<< HEAD:db/migrate/20240522111308_remove_notifications_with_continuity_badge.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160703_remove_notifications_with_continuity_badge.decidim.rb
class RemoveNotificationsWithContinuityBadge < ActiveRecord::Migration[5.2]
  def up
    Decidim::Notification.where("extra->>'badge_name' =?", "continuity").delete_all
  end

  def down; end
end
