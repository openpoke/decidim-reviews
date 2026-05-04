# frozen_string_literal: true

# This migration comes from decidim (originally 20170110133113)
<<<<<<< HEAD:db/migrate/20240522111153_add_configuration_to_features.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160548_add_configuration_to_features.decidim.rb
class AddConfigurationToFeatures < ActiveRecord::Migration[5.0]
  def change
    change_table :decidim_features do |t|
      t.jsonb :settings, default: {}
    end
  end
end
