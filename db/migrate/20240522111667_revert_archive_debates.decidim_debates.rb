# frozen_string_literal: true

# This migration comes from decidim_debates (originally 20210125101735)
<<<<<<< HEAD:db/migrate/20240522111667_revert_archive_debates.decidim_debates.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161035_revert_archive_debates.decidim_debates.rb
class RevertArchiveDebates < ActiveRecord::Migration[5.2]
  def change
    remove_index :decidim_debates_debates, :archived_at
    remove_column :decidim_debates_debates, :archived_at
  end
end
