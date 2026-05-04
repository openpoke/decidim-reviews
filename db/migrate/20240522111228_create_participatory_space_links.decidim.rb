# frozen_string_literal: true

# This migration comes from decidim (originally 20180227131727)
<<<<<<< HEAD:db/migrate/20240522111228_create_participatory_space_links.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160623_create_participatory_space_links.decidim.rb
class CreateParticipatorySpaceLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :decidim_participatory_space_links do |t|
      t.references :from, null: false, polymorphic: true, index: { name: "index_participatory_space_links_on_from" }
      t.references :to, null: false, polymorphic: true, index: { name: "index_participatory_space_links_on_to" }
      t.string :name, null: false, index: { name: "index_participatory_space_links_name" }
      t.jsonb :data
    end
  end
end
