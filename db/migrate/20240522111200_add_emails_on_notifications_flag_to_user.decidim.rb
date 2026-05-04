# frozen_string_literal: true

# This migration comes from decidim (originally 20170912082054)
<<<<<<< HEAD:db/migrate/20240522111200_add_emails_on_notifications_flag_to_user.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160595_add_emails_on_notifications_flag_to_user.decidim.rb
class AddEmailsOnNotificationsFlagToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_users, :email_on_notification, :boolean, default: false, null: false
  end
end
