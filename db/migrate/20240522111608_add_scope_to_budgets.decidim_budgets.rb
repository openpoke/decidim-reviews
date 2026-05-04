# frozen_string_literal: true

# This migration comes from decidim_budgets (originally 20200717140012)
<<<<<<< HEAD:db/migrate/20240522111608_add_scope_to_budgets.decidim_budgets.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160976_add_scope_to_budgets.decidim_budgets.rb
class AddScopeToBudgets < ActiveRecord::Migration[5.2]
  def change
    add_reference :decidim_budgets_budgets, :decidim_scope, foreign_key: true, index: true
  end
end
