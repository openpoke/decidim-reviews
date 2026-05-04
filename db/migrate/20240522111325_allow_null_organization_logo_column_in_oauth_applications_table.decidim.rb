# frozen_string_literal: true

# This migration comes from decidim (originally 20210407190753)
<<<<<<< HEAD:db/migrate/20240522111325_allow_null_organization_logo_column_in_oauth_applications_table.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160720_allow_null_organization_logo_column_in_oauth_applications_table.decidim.rb
class AllowNullOrganizationLogoColumnInOAuthApplicationsTable < ActiveRecord::Migration[6.0]
  def change
    change_column_null :oauth_applications, :organization_logo, true
  end
end
