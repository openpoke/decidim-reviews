# frozen_string_literal: true

# This migration comes from decidim_budgets (originally 20200728075039)
<<<<<<< HEAD:db/migrate/20240522111609_add_selected_at_to_project.decidim_budgets.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160977_add_selected_at_to_project.decidim_budgets.rb
class AddSelectedAtToProject < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_budgets_projects, :selected_at, :date, index: true
  end
end
