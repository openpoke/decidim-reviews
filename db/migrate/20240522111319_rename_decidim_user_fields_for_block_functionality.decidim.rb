# frozen_string_literal: true

# This migration comes from decidim (originally 20201218145252)
<<<<<<< HEAD:db/migrate/20240522111319_rename_decidim_user_fields_for_block_functionality.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160714_rename_decidim_user_fields_for_block_functionality.decidim.rb
class RenameDecidimUserFieldsForBlockFunctionality < ActiveRecord::Migration[5.2]
  def change
    rename_column :decidim_users, :suspended, :blocked
    rename_column :decidim_users, :suspended_at, :blocked_at
    rename_column :decidim_users, :suspension_id, :block_id
  end
end
