# frozen_string_literal: true

# This migration comes from decidim_admin (originally 20170714083651)
<<<<<<< HEAD:db/migrate/20240522111356_rename_participatory_process_user_roles_table.decidim_admin.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160741_rename_participatory_process_user_roles_table.decidim_admin.rb
class RenameParticipatoryProcessUserRolesTable < ActiveRecord::Migration[5.1]
  def change
    rename_table :decidim_admin_participatory_process_user_roles, :decidim_participatory_process_user_roles
  end
end
