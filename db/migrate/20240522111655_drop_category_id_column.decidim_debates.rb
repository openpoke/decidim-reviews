# frozen_string_literal: true

# This migration comes from decidim_debates (originally 20180305092347)
<<<<<<< HEAD:db/migrate/20240522111655_drop_category_id_column.decidim_debates.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161023_drop_category_id_column.decidim_debates.rb
class DropCategoryIdColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :decidim_debates_debates, :decidim_category_id
  end
end
