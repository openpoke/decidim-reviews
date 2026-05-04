# frozen_string_literal: true

# This migration comes from decidim (originally 20170120120733)
<<<<<<< HEAD:db/migrate/20240522111161_add_user_groups_verified.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160556_add_user_groups_verified.decidim.rb
class AddUserGroupsVerified < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_user_groups, :verified, :boolean, default: false
  end
end
