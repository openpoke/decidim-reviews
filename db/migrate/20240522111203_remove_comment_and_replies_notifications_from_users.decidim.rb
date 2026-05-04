# frozen_string_literal: true

# This migration comes from decidim (originally 20170914092116)
<<<<<<< HEAD:db/migrate/20240522111203_remove_comment_and_replies_notifications_from_users.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160598_remove_comment_and_replies_notifications_from_users.decidim.rb
class RemoveCommentAndRepliesNotificationsFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :decidim_users, :comments_notifications
    remove_column :decidim_users, :replies_notifications
  end
end
