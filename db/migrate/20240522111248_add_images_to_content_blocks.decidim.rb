# frozen_string_literal: true

# This migration comes from decidim (originally 20180808135006)
<<<<<<< HEAD:db/migrate/20240522111248_add_images_to_content_blocks.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160643_add_images_to_content_blocks.decidim.rb
class AddImagesToContentBlocks < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_content_blocks, :images, :jsonb, default: {}
  end
end
