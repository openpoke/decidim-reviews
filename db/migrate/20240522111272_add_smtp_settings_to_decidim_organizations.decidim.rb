# frozen_string_literal: true

# This migration comes from decidim (originally 20181219130325)
<<<<<<< HEAD:db/migrate/20240522111272_add_smtp_settings_to_decidim_organizations.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160667_add_smtp_settings_to_decidim_organizations.decidim.rb
class AddSmtpSettingsToDecidimOrganizations < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_organizations, :smtp_settings, :jsonb
  end
end
