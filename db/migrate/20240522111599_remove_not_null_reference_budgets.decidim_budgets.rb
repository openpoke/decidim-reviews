# frozen_string_literal: true

# This migration comes from decidim_budgets (originally 20170410074214)
<<<<<<< HEAD:db/migrate/20240522111599_remove_not_null_reference_budgets.decidim_budgets.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160967_remove_not_null_reference_budgets.decidim_budgets.rb
class RemoveNotNullReferenceBudgets < ActiveRecord::Migration[5.0]
  def change
    change_column_null :decidim_budgets_projects, :reference, true
  end
end
