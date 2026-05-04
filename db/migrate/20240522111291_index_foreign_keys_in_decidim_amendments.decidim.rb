# frozen_string_literal: true

# This migration comes from decidim (originally 20200320105905)
<<<<<<< HEAD:db/migrate/20240522111291_index_foreign_keys_in_decidim_amendments.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160686_index_foreign_keys_in_decidim_amendments.decidim.rb
class IndexForeignKeysInDecidimAmendments < ActiveRecord::Migration[5.2]
  def change
    add_index :decidim_amendments, :decidim_emendation_id
  end
end
