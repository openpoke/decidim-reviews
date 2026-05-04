# frozen_string_literal: true

# This migration comes from decidim_budgets (originally 20200827154129)
<<<<<<< HEAD:db/migrate/20240522111611_add_commentable_counter_cache_to_projects.decidim_budgets.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160979_add_commentable_counter_cache_to_projects.decidim_budgets.rb
class AddCommentableCounterCacheToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_budgets_projects, :comments_count, :integer, null: false, default: 0, index: true
    Decidim::Budgets::Project.reset_column_information
    Decidim::Budgets::Project.unscoped.find_each(&:update_comments_count)
  end
end
