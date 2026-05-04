# frozen_string_literal: true

# This migration comes from decidim (originally 20191113092826)
<<<<<<< HEAD:db/migrate/20240522111281_add_omniauth_settings_to_decidim_organization.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160676_add_omniauth_settings_to_decidim_organization.decidim.rb
class AddOmniauthSettingsToDecidimOrganization < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_organizations, :omniauth_settings, :jsonb
  end
end
