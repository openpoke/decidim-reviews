# frozen_string_literal: true

# This migration comes from decidim (originally 20200320105904)
<<<<<<< HEAD:db/migrate/20240522111290_index_foreign_keys_in_decidim_action_logs.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160685_index_foreign_keys_in_decidim_action_logs.decidim.rb
class IndexForeignKeysInDecidimActionLogs < ActiveRecord::Migration[5.2]
  def change
    add_index :decidim_action_logs, :decidim_area_id
    add_index :decidim_action_logs, :decidim_scope_id
    add_index :decidim_action_logs, :version_id
  end
end
