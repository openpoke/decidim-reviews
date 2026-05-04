# frozen_string_literal: true

# This migration comes from decidim_accountability (originally 20170508104902)
<<<<<<< HEAD:db/migrate/20240522111638_add_description_and_progress_to_statuses.decidim_accountability.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161006_add_description_and_progress_to_statuses.decidim_accountability.rb
class AddDescriptionAndProgressToStatuses < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_accountability_statuses, :description, :jsonb
    add_column :decidim_accountability_statuses, :progress, :integer
  end
end
