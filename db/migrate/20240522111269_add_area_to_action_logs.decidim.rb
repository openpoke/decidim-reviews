# frozen_string_literal: true

# This migration comes from decidim (originally 20181211090933)
<<<<<<< HEAD:db/migrate/20240522111269_add_area_to_action_logs.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160664_add_area_to_action_logs.decidim.rb
class AddAreaToActionLogs < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_action_logs, :decidim_area_id, :integer
  end
end
