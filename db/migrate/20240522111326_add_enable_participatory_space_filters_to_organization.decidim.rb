# frozen_string_literal: true

# This migration comes from decidim (originally 20210412120115)
<<<<<<< HEAD:db/migrate/20240522111326_add_enable_participatory_space_filters_to_organization.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160721_add_enable_participatory_space_filters_to_organization.decidim.rb
class AddEnableParticipatorySpaceFiltersToOrganization < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_organizations, :enable_participatory_space_filters, :boolean, default: true
  end
end
