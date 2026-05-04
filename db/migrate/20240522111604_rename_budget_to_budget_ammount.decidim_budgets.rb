# frozen_string_literal: true

# This migration comes from decidim_budgets (originally 20200629072626)
<<<<<<< HEAD:db/migrate/20240522111604_rename_budget_to_budget_ammount.decidim_budgets.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160972_rename_budget_to_budget_ammount.decidim_budgets.rb
class RenameBudgetToBudgetAmmount < ActiveRecord::Migration[5.2]
  def change
    rename_column :decidim_budgets_projects, :budget, :budget_amount
  end
end
