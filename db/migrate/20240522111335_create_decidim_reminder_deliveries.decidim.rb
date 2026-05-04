# frozen_string_literal: true

# This migration comes from decidim (originally 20211209121040)
<<<<<<< HEAD:db/migrate/20240522111335_create_decidim_reminder_deliveries.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160730_create_decidim_reminder_deliveries.decidim.rb
class CreateDecidimReminderDeliveries < ActiveRecord::Migration[6.0]
  def change
    create_table :decidim_reminder_deliveries do |t|
      t.belongs_to :decidim_reminder, index: true, foreign_key: true
      t.timestamps
    end
  end
end
