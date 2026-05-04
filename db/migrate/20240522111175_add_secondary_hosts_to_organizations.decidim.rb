# frozen_string_literal: true

# This migration comes from decidim (originally 20170306144354)
<<<<<<< HEAD:db/migrate/20240522111175_add_secondary_hosts_to_organizations.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160570_add_secondary_hosts_to_organizations.decidim.rb
class AddSecondaryHostsToOrganizations < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_organizations, :secondary_hosts, :string, array: true, default: [], index: true
  end
end
