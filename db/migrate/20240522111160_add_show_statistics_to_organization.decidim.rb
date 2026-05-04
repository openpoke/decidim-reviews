# frozen_string_literal: true

# This migration comes from decidim (originally 20170119150649)
<<<<<<< HEAD:db/migrate/20240522111160_add_show_statistics_to_organization.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160555_add_show_statistics_to_organization.decidim.rb
class AddShowStatisticsToOrganization < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_organizations, :show_statistics, :boolean, default: true
  end
end
