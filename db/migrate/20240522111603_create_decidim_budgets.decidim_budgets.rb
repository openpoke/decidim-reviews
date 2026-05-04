# frozen_string_literal: true

# This migration comes from decidim_budgets (originally 20200617105120)
<<<<<<< HEAD:db/migrate/20240522111603_create_decidim_budgets.decidim_budgets.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160971_create_decidim_budgets.decidim_budgets.rb
class CreateDecidimBudgets < ActiveRecord::Migration[5.0]
  def change
    create_table :decidim_budgets_budgets do |t|
      t.jsonb :title
      t.integer :weight, null: false, default: 0
      t.jsonb :description
      t.integer :total_budget, default: 0
      t.references :decidim_component, index: true

      t.timestamps
    end
  end
end
