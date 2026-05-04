# frozen_string_literal: true

# This migration comes from decidim_sortitions (originally 20180103160301)
<<<<<<< HEAD:db/migrate/20240522111677_add_cancel_data_to_sortition.decidim_sortitions.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161045_add_cancel_data_to_sortition.decidim_sortitions.rb
class AddCancelDataToSortition < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_module_sortitions_sortitions, :cancel_reason, :jsonb
    add_column :decidim_module_sortitions_sortitions, :cancelled_on, :datetime
    add_column :decidim_module_sortitions_sortitions, :cancelled_by_user_id, :integer, index: true
  end
end
