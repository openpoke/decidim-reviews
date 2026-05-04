# frozen_string_literal: true

# This migration comes from decidim (originally 20161213094244)
<<<<<<< HEAD:db/migrate/20240522111151_add_avatar_to_users.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160546_add_avatar_to_users.decidim.rb
class AddAvatarToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_users, :avatar, :string
  end
end
