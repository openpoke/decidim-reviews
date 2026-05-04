# frozen_string_literal: true

# This migration comes from decidim (originally 20180123125308)
<<<<<<< HEAD:db/migrate/20240522111215_add_enable_omnipresent_banner_to_decidim_organizations.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160610_add_enable_omnipresent_banner_to_decidim_organizations.decidim.rb
class AddEnableOmnipresentBannerToDecidimOrganizations < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_organizations, :enable_omnipresent_banner, :boolean, null: false, default: false
  end
end
