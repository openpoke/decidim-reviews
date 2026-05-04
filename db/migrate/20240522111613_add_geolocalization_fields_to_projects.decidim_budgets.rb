# frozen_string_literal: true

# This migration comes from decidim_budgets (originally 20220428072638)
<<<<<<< HEAD:db/migrate/20240522111613_add_geolocalization_fields_to_projects.decidim_budgets.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160981_add_geolocalization_fields_to_projects.decidim_budgets.rb
class AddGeolocalizationFieldsToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :decidim_budgets_projects, :address, :text
    add_column :decidim_budgets_projects, :latitude, :float
    add_column :decidim_budgets_projects, :longitude, :float
  end
end
