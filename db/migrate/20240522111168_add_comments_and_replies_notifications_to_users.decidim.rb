# frozen_string_literal: true

# This migration comes from decidim (originally 20170202084913)
<<<<<<< HEAD:db/migrate/20240522111168_add_comments_and_replies_notifications_to_users.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160563_add_comments_and_replies_notifications_to_users.decidim.rb
class AddCommentsAndRepliesNotificationsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_users, :comments_notifications, :boolean, null: false, default: false
    add_column :decidim_users, :replies_notifications, :boolean, null: false, default: false
  end
end
