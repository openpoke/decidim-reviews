# frozen_string_literal: true

# This migration comes from decidim_budgets (originally 20170215132708)
<<<<<<< HEAD:db/migrate/20240522111598_add_reference_to_projects.decidim_budgets.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160966_add_reference_to_projects.decidim_budgets.rb
class AddReferenceToProjects < ActiveRecord::Migration[5.0]
  class Project < ApplicationRecord
    self.table_name = :decidim_budgets_projects
  end

  def change
    add_column :decidim_budgets_projects, :reference, :string
    Project.find_each(&:save)
    change_column_null :decidim_budgets_projects, :reference, false
  end
end
