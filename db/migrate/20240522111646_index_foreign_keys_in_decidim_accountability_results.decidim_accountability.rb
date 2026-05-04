# frozen_string_literal: true

# This migration comes from decidim_accountability (originally 20200320105903)
<<<<<<< HEAD:db/migrate/20240522111646_index_foreign_keys_in_decidim_accountability_results.decidim_accountability.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161014_index_foreign_keys_in_decidim_accountability_results.decidim_accountability.rb
class IndexForeignKeysInDecidimAccountabilityResults < ActiveRecord::Migration[5.2]
  def change
    add_index :decidim_accountability_results, :external_id
  end
end
