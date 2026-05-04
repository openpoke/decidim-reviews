# frozen_string_literal: true

# This migration comes from decidim_debates (originally 20180118132243)
<<<<<<< HEAD:db/migrate/20240522111652_add_author_to_debates.decidim_debates.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161020_add_author_to_debates.decidim_debates.rb
class AddAuthorToDebates < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_debates_debates, :decidim_author_id, :integer
  end
end
