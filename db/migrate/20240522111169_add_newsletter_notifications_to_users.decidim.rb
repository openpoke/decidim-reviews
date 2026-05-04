# frozen_string_literal: true

# This migration comes from decidim (originally 20170203150545)
<<<<<<< HEAD:db/migrate/20240522111169_add_newsletter_notifications_to_users.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160564_add_newsletter_notifications_to_users.decidim.rb
class AddNewsletterNotificationsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_users, :newsletter_notifications, :boolean, null: false, default: false
  end
end
