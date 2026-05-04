# frozen_string_literal: true

# This migration comes from decidim (originally 20220127113419)
<<<<<<< HEAD:db/migrate/20240522111337_add_notification_settings_to_users.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160732_add_notification_settings_to_users.decidim.rb
class AddNotificationSettingsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :decidim_users, :notification_settings, :jsonb, default: {}
  end
end
