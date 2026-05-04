# frozen_string_literal: true

# This migration comes from decidim_budgets (originally 20181205141115)
<<<<<<< HEAD:db/migrate/20240522111602_use_big_ints_for_budgets.decidim_budgets.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160970_use_big_ints_for_budgets.decidim_budgets.rb
class UseBigIntsForBudgets < ActiveRecord::Migration[5.2]
  def change
    change_column :decidim_budgets_projects, :budget, :bigint
  end
end
