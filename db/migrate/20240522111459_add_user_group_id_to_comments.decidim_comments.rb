# frozen_string_literal: true

# This migration comes from decidim_comments (originally 20170123102043)
<<<<<<< HEAD:db/migrate/20240522111459_add_user_group_id_to_comments.decidim_comments.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160839_add_user_group_id_to_comments.decidim_comments.rb
class AddUserGroupIdToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_comments_comments, :decidim_user_group_id, :integer, index: true
  end
end
