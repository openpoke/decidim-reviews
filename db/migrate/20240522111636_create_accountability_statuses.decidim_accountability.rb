# frozen_string_literal: true

# This migration comes from decidim_accountability (originally 20170425154712)
<<<<<<< HEAD:db/migrate/20240522111636_create_accountability_statuses.decidim_accountability.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161004_create_accountability_statuses.decidim_accountability.rb
class CreateAccountabilityStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :decidim_accountability_statuses do |t|
      t.string :key
      t.jsonb :name
      t.references :decidim_feature, index: true

      t.timestamps
    end
  end
end
