# frozen_string_literal: true

# This migration comes from decidim (originally 20191212102051)
<<<<<<< HEAD:db/migrate/20240522111287_remove_continuity_badges.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160682_remove_continuity_badges.decidim.rb
class RemoveContinuityBadges < ActiveRecord::Migration[5.2]
  class BadgeScore < ApplicationRecord
    self.table_name = :decidim_gamification_badge_scores
  end

  def change
    drop_table :decidim_continuity_badge_statuses

    BadgeScore.where(badge_name: :continuity).delete_all
  end
end
