# frozen_string_literal: true

# This migration comes from decidim_sortitions (originally 20180322082150)
<<<<<<< HEAD:db/migrate/20240522111681_fix_sortitions_feature.decidim_sortitions.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161049_fix_sortitions_feature.decidim_sortitions.rb
class FixSortitionsFeature < ActiveRecord::Migration[5.1]
  def up
    rename_column :decidim_sortitions_sortitions, :decidim_feature_id, :decidim_component_id
  end

  def down
    rename_column :decidim_sortitions_sortitions, :decidim_component_id, :decidim_feature_id
  end
end
