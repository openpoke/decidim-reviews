# frozen_string_literal: true

# This migration comes from decidim (originally 20211126183540)
<<<<<<< HEAD:db/migrate/20240522111332_add_timestamps_to_content_blocks.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160727_add_timestamps_to_content_blocks.decidim.rb
class AddTimestampsToContentBlocks < ActiveRecord::Migration[6.0]
  def up
    add_timestamps :decidim_content_blocks, default: Time.zone.now
    change_column_default :decidim_content_blocks, :created_at, nil
    change_column_default :decidim_content_blocks, :updated_at, nil
  end

  def down
    remove_column :decidim_content_blocks, :updated_at
    remove_column :decidim_content_blocks, :created_at
  end
end
