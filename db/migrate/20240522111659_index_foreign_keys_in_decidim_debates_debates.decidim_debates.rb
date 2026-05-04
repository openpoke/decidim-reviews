# frozen_string_literal: true

# This migration comes from decidim_debates (originally 20200320105918)
<<<<<<< HEAD:db/migrate/20240522111659_index_foreign_keys_in_decidim_debates_debates.decidim_debates.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161027_index_foreign_keys_in_decidim_debates_debates.decidim_debates.rb
class IndexForeignKeysInDecidimDebatesDebates < ActiveRecord::Migration[5.2]
  def change
    add_index :decidim_debates_debates, :decidim_user_group_id
  end
end
