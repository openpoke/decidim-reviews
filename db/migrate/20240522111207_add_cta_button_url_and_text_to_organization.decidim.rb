# frozen_string_literal: true

# This migration comes from decidim (originally 20171017084546)
<<<<<<< HEAD:db/migrate/20240522111207_add_cta_button_url_and_text_to_organization.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160602_add_cta_button_url_and_text_to_organization.decidim.rb
class AddCtaButtonUrlAndTextToOrganization < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_organizations, :cta_button_text, :jsonb
    add_column :decidim_organizations, :cta_button_path, :string
  end
end
