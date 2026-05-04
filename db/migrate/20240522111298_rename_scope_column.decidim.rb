# frozen_string_literal: true

# This migration comes from decidim (originally 20200326102407)
<<<<<<< HEAD:db/migrate/20240522111298_rename_scope_column.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160693_rename_scope_column.decidim.rb
class RenameScopeColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :decidim_content_blocks, :scope, :scope_name
  end
end
