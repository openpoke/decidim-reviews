# frozen_string_literal: true

# This migration comes from decidim (originally 20170110153807)
<<<<<<< HEAD:db/migrate/20240522111154_add_handler_to_organization.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160549_add_handler_to_organization.decidim.rb
class AddHandlerToOrganization < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_organizations, :twitter_handler, :string
  end
end
