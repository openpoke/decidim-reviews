# frozen_string_literal: true

# This migration comes from decidim (originally 20170727125445)
<<<<<<< HEAD:db/migrate/20240522111196_add_roles_to_users.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160591_add_roles_to_users.decidim.rb
class AddRolesToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_users, :roles, :string, array: true, default: []
  end
end
