# frozen_string_literal: true

# This migration comes from decidim_sortitions (originally 20180102101128)
<<<<<<< HEAD:db/migrate/20240522111674_add_reference_to_sortitions.decidim_sortitions.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161042_add_reference_to_sortitions.decidim_sortitions.rb
class AddReferenceToSortitions < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_module_sortitions_sortitions, :reference, :string
    change_column_null :decidim_module_sortitions_sortitions, :reference, false
  end
end
