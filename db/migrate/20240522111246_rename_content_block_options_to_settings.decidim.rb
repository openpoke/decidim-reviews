# frozen_string_literal: true

# This migration comes from decidim (originally 20180802132147)
<<<<<<< HEAD:db/migrate/20240522111246_rename_content_block_options_to_settings.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160641_rename_content_block_options_to_settings.decidim.rb
class RenameContentBlockOptionsToSettings < ActiveRecord::Migration[5.2]
  def change
    rename_column :decidim_content_blocks, :options, :settings
  end
end
