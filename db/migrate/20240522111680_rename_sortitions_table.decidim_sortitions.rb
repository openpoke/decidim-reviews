# frozen_string_literal: true

# This migration comes from decidim_sortitions (originally 20180108132729)
<<<<<<< HEAD:db/migrate/20240522111680_rename_sortitions_table.decidim_sortitions.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161048_rename_sortitions_table.decidim_sortitions.rb
class RenameSortitionsTable < ActiveRecord::Migration[5.1]
  def change
    rename_table :decidim_module_sortitions_sortitions, :decidim_sortitions_sortitions
  end
end
