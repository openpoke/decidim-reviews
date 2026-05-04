# frozen_string_literal: true

# This migration comes from decidim_budgets (originally 20210310120613)
<<<<<<< HEAD:db/migrate/20240522111612_add_followable_counter_cache_to_budgets.decidim_budgets.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160980_add_followable_counter_cache_to_budgets.decidim_budgets.rb
class AddFollowableCounterCacheToBudgets < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_budgets_projects, :follows_count, :integer, null: false, default: 0, index: true

    reversible do |dir|
      dir.up do
        Decidim::Budgets::Project.reset_column_information
        Decidim::Budgets::Project.unscoped.find_each do |record|
          record.class.reset_counters(record.id, :follows)
        end
      end
    end
  end
end
