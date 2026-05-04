# frozen_string_literal: true

# This migration comes from decidim (originally 20170405094028)
<<<<<<< HEAD:db/migrate/20240522111180_add_organization_to_identities.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160575_add_organization_to_identities.decidim.rb
class AddOrganizationToIdentities < ActiveRecord::Migration[5.0]
  def change
    add_reference :decidim_identities, :decidim_organization, index: true, foreign_key: true
  end
end
