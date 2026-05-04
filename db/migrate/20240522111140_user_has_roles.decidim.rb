# frozen_string_literal: true

# This migration comes from decidim (originally 20160920141151)
<<<<<<< HEAD:db/migrate/20240522111140_user_has_roles.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160535_user_has_roles.decidim.rb
class UserHasRoles < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_users, :roles, :string, array: true, default: []
  end
end
