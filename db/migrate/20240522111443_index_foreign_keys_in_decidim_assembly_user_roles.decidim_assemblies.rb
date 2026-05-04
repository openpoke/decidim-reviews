# frozen_string_literal: true

# This migration comes from decidim_assemblies (originally 20200320105907)
<<<<<<< HEAD:db/migrate/20240522111443_index_foreign_keys_in_decidim_assembly_user_roles.decidim_assemblies.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160823_index_foreign_keys_in_decidim_assembly_user_roles.decidim_assemblies.rb
class IndexForeignKeysInDecidimAssemblyUserRoles < ActiveRecord::Migration[5.2]
  def change
    add_index :decidim_assembly_user_roles, :decidim_user_id
  end
end
