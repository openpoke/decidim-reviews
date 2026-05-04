# frozen_string_literal: true

# This migration comes from decidim_assemblies (originally 20210204152393)
<<<<<<< HEAD:db/migrate/20240522111446_add_weight_field_to_assembly.decidim_assemblies.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160826_add_weight_field_to_assembly.decidim_assemblies.rb
class AddWeightFieldToAssembly < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_assemblies, :weight, :integer, null: false, default: true
  end
end
