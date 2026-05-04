# frozen_string_literal: true

# This migration comes from decidim (originally 20220427142214)
<<<<<<< HEAD:db/migrate/20240522111341_drop_emails_on_notifications_flag_from_user.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160736_drop_emails_on_notifications_flag_from_user.decidim.rb
class DropEmailsOnNotificationsFlagFromUser < ActiveRecord::Migration[5.1]
  class DecidimUser < ApplicationRecord
    self.table_name = :decidim_users
  end

  def change
    # rubocop:disable Rails/SkipsModelValidations
    DecidimUser.where(email_on_notification: true).update_all(notifications_sending_frequency: "real_time")
    # rubocop:enable Rails/SkipsModelValidations

    remove_column :decidim_users, :email_on_notification
  end
end
