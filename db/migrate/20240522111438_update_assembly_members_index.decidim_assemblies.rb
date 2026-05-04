# frozen_string_literal: true

# This migration comes from decidim_assemblies (originally 20180515073049)
<<<<<<< HEAD:db/migrate/20240522111438_update_assembly_members_index.decidim_assemblies.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160818_update_assembly_members_index.decidim_assemblies.rb
class UpdateAssemblyMembersIndex < ActiveRecord::Migration[5.1]
  def change
    remove_index :decidim_assembly_members, column: :weight
    add_index :decidim_assembly_members, [:weight, :created_at]
  end
end
