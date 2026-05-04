# frozen_string_literal: true

# This migration comes from decidim (originally 20190829092826)
<<<<<<< HEAD:db/migrate/20240522111279_add_uniq_index_to_decidim_metrics.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160674_add_uniq_index_to_decidim_metrics.decidim.rb
class AddUniqIndexToDecidimMetrics < ActiveRecord::Migration[5.2]
  def change
    add_index(
      :decidim_metrics, [
        :day,
        :metric_type,
        :decidim_organization_id,
        :participatory_space_type,
        :participatory_space_id,
        :related_object_type,
        :related_object_id,
        :decidim_category_id
      ],
      unique: true,
      name: "idx_metric_by_day_type_org_space_object_category"
    )
  end
end
