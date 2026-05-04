# frozen_string_literal: true

# This migration comes from decidim_budgets (originally 20170207101750)
<<<<<<< HEAD:db/migrate/20240522111597_remove_short_description_from_decidim_projects.decidim_budgets.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160965_remove_short_description_from_decidim_projects.decidim_budgets.rb
class RemoveShortDescriptionFromDecidimProjects < ActiveRecord::Migration[5.0]
  def change
    remove_column :decidim_budgets_projects, :short_description
  end
end
