# frozen_string_literal: true

# This migration comes from decidim_budgets (originally 20170127114122)
<<<<<<< HEAD:db/migrate/20240522111594_create_projects.decidim_budgets.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160962_create_projects.decidim_budgets.rb
class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :decidim_budgets_projects do |t|
      t.jsonb :title
      t.jsonb :description
      t.jsonb :short_description
      t.integer :budget, null: false
      t.references :decidim_feature, index: true
      t.references :decidim_scope, index: true
      t.references :decidim_category, index: true

      t.timestamps
    end
  end
end
