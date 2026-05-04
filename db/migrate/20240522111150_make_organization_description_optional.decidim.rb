# frozen_string_literal: true

# This migration comes from decidim (originally 20161209134715)
<<<<<<< HEAD:db/migrate/20240522111150_make_organization_description_optional.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160545_make_organization_description_optional.decidim.rb
class MakeOrganizationDescriptionOptional < ActiveRecord::Migration[5.0]
  def change
    change_column :decidim_organizations, :welcome_text, :jsonb, null: true
  end
end
