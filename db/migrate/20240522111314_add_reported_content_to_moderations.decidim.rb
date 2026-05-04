# frozen_string_literal: true

# This migration comes from decidim (originally 20201013071533)
<<<<<<< HEAD:db/migrate/20240522111314_add_reported_content_to_moderations.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160709_add_reported_content_to_moderations.decidim.rb
class AddReportedContentToModerations < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_moderations, :reported_content, :text
  end
end
