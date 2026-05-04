# frozen_string_literal: true

# This migration comes from decidim (originally 20180215104945)
<<<<<<< HEAD:db/migrate/20240522111225_create_decidim_areas.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160620_create_decidim_areas.decidim.rb
class CreateDecidimAreas < ActiveRecord::Migration[5.1]
  def change
    create_table :decidim_areas do |t|
      t.jsonb :name
      t.references :area_type, foreign_key: { to_table: :decidim_area_types }, index: true
      t.references :decidim_organization, foreign_key: true, index: true
      t.timestamps
    end
  end
end
