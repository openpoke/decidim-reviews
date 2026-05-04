# frozen_string_literal: true

# This migration comes from decidim_accountability (originally 20180508170647)
<<<<<<< HEAD:db/migrate/20240522111645_add_external_id_to_results.decidim_accountability.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161013_add_external_id_to_results.decidim_accountability.rb
class AddExternalIdToResults < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_accountability_results, :external_id, :string, index: true
  end
end
