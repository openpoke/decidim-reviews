# frozen_string_literal: true

# This migration comes from decidim (originally 20201218144706)
<<<<<<< HEAD:db/migrate/20240522111318_update_table_block_user_functionality.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160713_update_table_block_user_functionality.decidim.rb
class UpdateTableBlockUserFunctionality < ActiveRecord::Migration[5.2]
  def change
    rename_column :decidim_user_suspensions, :suspending_user_id, :blocking_user_id
    rename_table :decidim_user_suspensions, :decidim_user_blocks
  end
end
