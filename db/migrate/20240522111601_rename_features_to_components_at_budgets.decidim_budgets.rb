# frozen_string_literal: true

# This migration comes from decidim_budgets (originally 20180305133340)
<<<<<<< HEAD:db/migrate/20240522111601_rename_features_to_components_at_budgets.decidim_budgets.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160969_rename_features_to_components_at_budgets.decidim_budgets.rb
class RenameFeaturesToComponentsAtBudgets < ActiveRecord::Migration[5.1]
  def change
    rename_column :decidim_budgets_orders, :decidim_feature_id, :decidim_component_id
    rename_column :decidim_budgets_projects, :decidim_feature_id, :decidim_component_id
    rename_index :decidim_budgets_orders, "decidim_budgets_order_user_feature_unique", "decidim_budgets_order_user_component_unique"

    if index_name_exists?(:decidim_budgets_orders, "index_decidim_budgets_orders_on_decidim_feature_id")
      rename_index :decidim_budgets_orders, "index_decidim_budgets_orders_on_decidim_feature_id", "index_decidim_budgets_orders_on_decidim_component_id"
    end

    if index_name_exists?(:decidim_budgets_projects, "index_decidim_budgets_projects_on_decidim_feature_id")
      rename_index :decidim_budgets_projects, "index_decidim_budgets_projects_on_decidim_feature_id", "index_decidim_budgets_projects_on_decidim_component_id"
    end
  end
end
