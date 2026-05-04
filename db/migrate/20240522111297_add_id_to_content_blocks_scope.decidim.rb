# frozen_string_literal: true

# This migration comes from decidim (originally 20200323094443)
<<<<<<< HEAD:db/migrate/20240522111297_add_id_to_content_blocks_scope.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160692_add_id_to_content_blocks_scope.decidim.rb
class AddIdToContentBlocksScope < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_content_blocks, :scoped_resource_id, :integer
  end
end
