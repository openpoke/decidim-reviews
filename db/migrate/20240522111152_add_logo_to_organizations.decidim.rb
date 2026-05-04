# frozen_string_literal: true

# This migration comes from decidim (originally 20161214152811)
<<<<<<< HEAD:db/migrate/20240522111152_add_logo_to_organizations.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160547_add_logo_to_organizations.decidim.rb
class AddLogoToOrganizations < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_organizations, :logo, :string
  end
end
