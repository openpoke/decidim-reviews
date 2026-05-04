# frozen_string_literal: true

# This migration comes from decidim (originally 20180806095628)
<<<<<<< HEAD:db/migrate/20240522111247_add_badge_scores.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160642_add_badge_scores.decidim.rb
class AddBadgeScores < ActiveRecord::Migration[5.2]
  def change
    create_table :decidim_gamification_badge_scores do |t|
      t.references :user, null: false
      t.string :badge_name, null: false
      t.integer :value, null: false, default: 0
    end
  end
end
