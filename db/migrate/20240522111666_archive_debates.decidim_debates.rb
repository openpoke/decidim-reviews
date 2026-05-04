# frozen_string_literal: true

# This migration comes from decidim_debates (originally 20201126112752)
<<<<<<< HEAD:db/migrate/20240522111666_archive_debates.decidim_debates.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161034_archive_debates.decidim_debates.rb
class ArchiveDebates < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_debates_debates, :archived_at, :datetime
    add_index :decidim_debates_debates, :archived_at
  end
end
