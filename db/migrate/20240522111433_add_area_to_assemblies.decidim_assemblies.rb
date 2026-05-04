# frozen_string_literal: true

# This migration comes from decidim_assemblies (originally 20180216091553)
<<<<<<< HEAD:db/migrate/20240522111433_add_area_to_assemblies.decidim_assemblies.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160813_add_area_to_assemblies.decidim_assemblies.rb
class AddAreaToAssemblies < ActiveRecord::Migration[5.1]
  def change
    add_reference :decidim_assemblies, :decidim_area, index: true
  end
end
