# frozen_string_literal: true

# This migration comes from decidim (originally 20180123125432)
<<<<<<< HEAD:db/migrate/20240522111217_add_omnipresent_banner_short_description_to_decidim_organizations.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160612_add_omnipresent_banner_short_description_to_decidim_organizations.decidim.rb
class AddOmnipresentBannerShortDescriptionToDecidimOrganizations < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_organizations, :omnipresent_banner_short_description, :jsonb
  end
end
