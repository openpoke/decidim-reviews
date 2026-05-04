# frozen_string_literal: true

# This migration comes from decidim (originally 20170113150627)
<<<<<<< HEAD:db/migrate/20240522111155_create_resource_links.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160550_create_resource_links.decidim.rb
class CreateResourceLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :decidim_resource_links do |t|
      t.references :from, null: false, polymorphic: true, index: true
      t.references :to, null: false, polymorphic: true, index: true
      t.string :name, null: false, index: true
      t.jsonb :data
    end
  end
end
