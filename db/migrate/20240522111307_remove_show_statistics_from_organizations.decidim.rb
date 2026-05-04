# frozen_string_literal: true

# This migration comes from decidim (originally 20200929171508)
<<<<<<< HEAD:db/migrate/20240522111307_remove_show_statistics_from_organizations.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160702_remove_show_statistics_from_organizations.decidim.rb
class RemoveShowStatisticsFromOrganizations < ActiveRecord::Migration[5.2]
  def change
    remove_column :decidim_organizations, :show_statistics
  end
end
