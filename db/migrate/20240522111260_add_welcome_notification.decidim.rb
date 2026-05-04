# frozen_string_literal: true

# This migration comes from decidim (originally 20181029121244)
<<<<<<< HEAD:db/migrate/20240522111260_add_welcome_notification.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160655_add_welcome_notification.decidim.rb
class AddWelcomeNotification < ActiveRecord::Migration[5.2]
  def change
    change_table :decidim_organizations do |t|
      t.boolean :send_welcome_notification, null: false, default: false
      t.jsonb :welcome_notification_subject, null: true
      t.jsonb :welcome_notification_body, null: true
    end

    execute "UPDATE decidim_organizations SET send_welcome_notification = 'true'"
  end
end
