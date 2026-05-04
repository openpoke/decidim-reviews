# frozen_string_literal: true

# This migration comes from decidim (originally 20170131134349)
<<<<<<< HEAD:db/migrate/20240522111167_add_action_permissions_to_decidim_features.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160562_add_action_permissions_to_decidim_features.decidim.rb
class AddActionPermissionsToDecidimFeatures < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_features, :permissions, :jsonb
  end
end
