# frozen_string_literal: true

# This migration comes from decidim_assemblies (originally 20200320105906)
<<<<<<< HEAD:db/migrate/20240522111442_index_foreign_keys_in_decidim_assemblies.decidim_assemblies.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160822_index_foreign_keys_in_decidim_assemblies.decidim_assemblies.rb
class IndexForeignKeysInDecidimAssemblies < ActiveRecord::Migration[5.2]
  def change
    add_index :decidim_assemblies, :decidim_scope_id
  end
end
