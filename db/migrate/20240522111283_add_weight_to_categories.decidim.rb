# frozen_string_literal: true

# This migration comes from decidim (originally 20191118120529)
<<<<<<< HEAD:db/migrate/20240522111283_add_weight_to_categories.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160678_add_weight_to_categories.decidim.rb
class AddWeightToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_categories, :weight, :integer, null: false, default: 0
  end
end
