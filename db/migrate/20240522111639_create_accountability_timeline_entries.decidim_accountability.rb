# frozen_string_literal: true

# This migration comes from decidim_accountability (originally 20170620154712)
<<<<<<< HEAD:db/migrate/20240522111639_create_accountability_timeline_entries.decidim_accountability.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161007_create_accountability_timeline_entries.decidim_accountability.rb
class CreateAccountabilityTimelineEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :decidim_accountability_timeline_entries do |t|
      t.date :entry_date, index: true
      t.jsonb :description
      t.references :decidim_accountability_result, index: { name: :index_decidim_accountability_timeline_entries_on_results_id }

      t.timestamps
    end
  end
end
