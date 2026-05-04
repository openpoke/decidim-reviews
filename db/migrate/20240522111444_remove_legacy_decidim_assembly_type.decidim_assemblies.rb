# frozen_string_literal: true

# This migration comes from decidim_assemblies (originally 20200416132109)
<<<<<<< HEAD:db/migrate/20240522111444_remove_legacy_decidim_assembly_type.decidim_assemblies.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160824_remove_legacy_decidim_assembly_type.decidim_assemblies.rb
class RemoveLegacyDecidimAssemblyType < ActiveRecord::Migration[5.2]
  def change
    remove_column :decidim_assemblies, :assembly_type, :string
    remove_column :decidim_assemblies, :assembly_type_other, :jsonb
  end
end
