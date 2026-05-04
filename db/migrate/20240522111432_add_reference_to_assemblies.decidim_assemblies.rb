# frozen_string_literal: true

# This migration comes from decidim_assemblies (originally 20180125104426)
<<<<<<< HEAD:db/migrate/20240522111432_add_reference_to_assemblies.decidim_assemblies.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160812_add_reference_to_assemblies.decidim_assemblies.rb
class AddReferenceToAssemblies < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_assemblies, :reference, :string
  end
end
