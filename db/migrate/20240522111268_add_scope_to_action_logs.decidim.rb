# frozen_string_literal: true

# This migration comes from decidim (originally 20181211080834)
<<<<<<< HEAD:db/migrate/20240522111268_add_scope_to_action_logs.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160663_add_scope_to_action_logs.decidim.rb
class AddScopeToActionLogs < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_action_logs, :decidim_scope_id, :integer
  end
end
