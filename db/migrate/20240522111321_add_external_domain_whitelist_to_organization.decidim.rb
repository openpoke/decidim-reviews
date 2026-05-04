# frozen_string_literal: true

# This migration comes from decidim (originally 20210210114657)
<<<<<<< HEAD:db/migrate/20240522111321_add_external_domain_whitelist_to_organization.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160716_add_external_domain_whitelist_to_organization.decidim.rb
class AddExternalDomainWhitelistToOrganization < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_organizations, :external_domain_whitelist, :string, array: true, default: []

    reversible do |direction|
      direction.up do
        # rubocop:disable Rails/SkipsModelValidations
        Decidim::Organization.update_all("external_domain_whitelist = ARRAY['decidim.org', 'github.com']")
        # rubocop:enable Rails/SkipsModelValidations
      end
    end
  end
end
