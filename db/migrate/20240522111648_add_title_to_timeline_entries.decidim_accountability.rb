# frozen_string_literal: true

# This migration comes from decidim_accountability (originally 20220331150008)
<<<<<<< HEAD:db/migrate/20240522111648_add_title_to_timeline_entries.decidim_accountability.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161016_add_title_to_timeline_entries.decidim_accountability.rb
class AddTitleToTimelineEntries < ActiveRecord::Migration[6.1]
  def change
    add_column :decidim_accountability_timeline_entries, :title, :jsonb
  end
end
