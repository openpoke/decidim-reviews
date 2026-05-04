# frozen_string_literal: true

# This migration comes from decidim (originally 20170914092117)
<<<<<<< HEAD:db/migrate/20240522111204_add_status_to_authorizations.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160599_add_status_to_authorizations.decidim.rb
class AddStatusToAuthorizations < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_authorizations, :granted_at, :datetime

    execute "UPDATE decidim_authorizations SET granted_at = updated_at"
  end
end
