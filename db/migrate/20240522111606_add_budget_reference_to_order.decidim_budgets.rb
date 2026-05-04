# frozen_string_literal: true

# This migration comes from decidim_budgets (originally 20200706142609)
<<<<<<< HEAD:db/migrate/20240522111606_add_budget_reference_to_order.decidim_budgets.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160974_add_budget_reference_to_order.decidim_budgets.rb
class AddBudgetReferenceToOrder < ActiveRecord::Migration[5.2]
  def change
    add_reference :decidim_budgets_orders, :decidim_budgets_budget, foreign_key: true
  end
end
