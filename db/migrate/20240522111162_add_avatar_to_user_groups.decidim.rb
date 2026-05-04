# frozen_string_literal: true

# This migration comes from decidim (originally 20170123140857)
<<<<<<< HEAD:db/migrate/20240522111162_add_avatar_to_user_groups.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160557_add_avatar_to_user_groups.decidim.rb
class AddAvatarToUserGroups < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_user_groups, :avatar, :string
  end
end
