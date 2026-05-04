# frozen_string_literal: true

# This migration comes from decidim_assemblies (originally 20210907120249)
<<<<<<< HEAD:db/migrate/20240522111449_remove_designation_mode_from_assembly_members.decidim_assemblies.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160829_remove_designation_mode_from_assembly_members.decidim_assemblies.rb
class RemoveDesignationModeFromAssemblyMembers < ActiveRecord::Migration[6.0]
  def change
    remove_column :decidim_assembly_members, :designation_mode, :string
  end
end
