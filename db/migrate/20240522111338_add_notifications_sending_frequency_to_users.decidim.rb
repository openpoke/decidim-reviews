# frozen_string_literal: true

# This migration comes from decidim (originally 20220203121137)
<<<<<<< HEAD:db/migrate/20240522111338_add_notifications_sending_frequency_to_users.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160733_add_notifications_sending_frequency_to_users.decidim.rb
class AddNotificationsSendingFrequencyToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :decidim_users, :notifications_sending_frequency, :string, default: "daily", index: true
  end
end
