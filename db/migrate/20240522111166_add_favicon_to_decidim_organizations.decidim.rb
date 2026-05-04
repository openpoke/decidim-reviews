# frozen_string_literal: true

# This migration comes from decidim (originally 20170130132833)
<<<<<<< HEAD:db/migrate/20240522111166_add_favicon_to_decidim_organizations.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160561_add_favicon_to_decidim_organizations.decidim.rb
class AddFaviconToDecidimOrganizations < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_organizations, :favicon, :string
  end
end
