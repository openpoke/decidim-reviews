# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20200320105924)
<<<<<<< HEAD:db/migrate/20240522111416_index_foreign_keys_in_decidim_participatory_process_user_roles.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160797_index_foreign_keys_in_decidim_participatory_process_user_roles.decidim_participatory_processes.rb
class IndexForeignKeysInDecidimParticipatoryProcessUserRoles < ActiveRecord::Migration[5.2]
  def change
    add_index :decidim_participatory_process_user_roles, :decidim_user_id, name: "idx_proces_user_role_on_user_id"
  end
end
