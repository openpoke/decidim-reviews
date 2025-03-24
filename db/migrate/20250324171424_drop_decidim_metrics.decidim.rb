# frozen_string_literal: true

# This migration comes from decidim (originally 20250324164755)
class DropDecidimMetrics < ActiveRecord::Migration[7.0]
  def change
    drop_table :decidim_metrics, if_exists: true
  end
end
