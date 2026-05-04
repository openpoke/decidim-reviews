# frozen_string_literal: true

# This migration comes from decidim (originally 20170125152026)
<<<<<<< HEAD:db/migrate/20240522111163_add_weight_to_features.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160558_add_weight_to_features.decidim.rb
class AddWeightToFeatures < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_features, :weight, :integer, default: 0
  end
end
