# frozen_string_literal: true

# This migration comes from decidim (originally 20220118121921)
<<<<<<< HEAD:db/migrate/20240522111336_change_required_description_categories.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160731_change_required_description_categories.decidim.rb
class ChangeRequiredDescriptionCategories < ActiveRecord::Migration[6.0]
  def change
    change_column_null :decidim_categories, :description, true
  end
end
