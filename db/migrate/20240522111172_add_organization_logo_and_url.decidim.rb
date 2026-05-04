# frozen_string_literal: true

# This migration comes from decidim (originally 20170207093048)
<<<<<<< HEAD:db/migrate/20240522111172_add_organization_logo_and_url.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160567_add_organization_logo_and_url.decidim.rb
class AddOrganizationLogoAndUrl < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_organizations, :official_img_header, :string
    add_column :decidim_organizations, :official_img_footer, :string
    add_column :decidim_organizations, :official_url, :string
  end
end
