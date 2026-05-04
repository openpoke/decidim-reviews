# frozen_string_literal: true

# This migration comes from decidim (originally 20220323195258)
<<<<<<< HEAD:db/migrate/20240522111340_add_index_to_decidim_users_notifications_sending_frequency.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160735_add_index_to_decidim_users_notifications_sending_frequency.decidim.rb
class AddIndexToDecidimUsersNotificationsSendingFrequency < ActiveRecord::Migration[6.0]
  def change
    add_index :decidim_users, :notifications_sending_frequency
  end
end
