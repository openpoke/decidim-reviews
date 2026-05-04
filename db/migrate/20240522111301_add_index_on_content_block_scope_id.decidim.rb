# frozen_string_literal: true

# This migration comes from decidim (originally 20200401073419)
<<<<<<< HEAD:db/migrate/20240522111301_add_index_on_content_block_scope_id.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160696_add_index_on_content_block_scope_id.decidim.rb
class AddIndexOnContentBlockScopeId < ActiveRecord::Migration[5.2]
  def change
    add_index(
      :decidim_content_blocks,
      [:decidim_organization_id, :scope_name, :scoped_resource_id, :manifest_name],
      name: "idx_decidim_content_blocks_org_id_scope_scope_id_manifest"
    )
  end
end
