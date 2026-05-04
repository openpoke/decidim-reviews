# frozen_string_literal:  true

# This migration comes from decidim_sortitions (originally 20171220164658)
<<<<<<< HEAD:db/migrate/20240522111671_add_witnesses_to_sortitions.decidim_sortitions.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161039_add_witnesses_to_sortitions.decidim_sortitions.rb
class AddWitnessesToSortitions < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_module_sortitions_sortitions, :witnesses, :jsonb
  end
end
