# frozen_string_literal: true

# This migration comes from decidim_sortitions (originally 20180103123055)
<<<<<<< HEAD:db/migrate/20240522111676_drop_decidim_category_id_from_sortitions.decidim_sortitions.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161044_drop_decidim_category_id_from_sortitions.decidim_sortitions.rb
class DropDecidimCategoryIdFromSortitions < ActiveRecord::Migration[5.1]
  def up
    remove_column :decidim_module_sortitions_sortitions, :decidim_category_id
  end

  def down
    add_reference :decidim_module_sortitions_sortitions, :decidim_category,
                  foreign_key: true,
                  index: { name: "index_sortitions__on_category" }
  end
end
