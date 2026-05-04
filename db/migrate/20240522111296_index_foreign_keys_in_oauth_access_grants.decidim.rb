# frozen_string_literal: true

# This migration comes from decidim (originally 20200320105927)
<<<<<<< HEAD:db/migrate/20240522111296_index_foreign_keys_in_oauth_access_grants.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160691_index_foreign_keys_in_oauth_access_grants.decidim.rb
class IndexForeignKeysInOAuthAccessGrants < ActiveRecord::Migration[5.2]
  def change
    add_index :oauth_access_grants, :resource_owner_id
  end
end
