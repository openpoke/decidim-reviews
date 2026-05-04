# frozen_string_literal: true

# This migration comes from decidim (originally 20220524195530)
<<<<<<< HEAD:db/migrate/20240522111343_create_decidim_short_links.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160738_create_decidim_short_links.decidim.rb
class CreateDecidimShortLinks < ActiveRecord::Migration[6.1]
  def change
    create_table :decidim_short_links do |t|
      t.references :decidim_organization, null: false, index: true
      t.references :target, polymorphic: true, null: false, index: true
      t.string :identifier, limit: 10, null: false
      t.string :mounted_engine_name, index: true
      t.string :route_name, index: true
      t.jsonb :params

      t.timestamps
    end

    add_index(
      :decidim_short_links,
      [:decidim_organization_id, :identifier],
      unique: true,
      name: "idx_decidim_short_links_organization_id_identifier"
    )
  end
end
