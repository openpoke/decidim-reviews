# frozen_string_literal: true

# This migration comes from decidim (originally 20180427141253)
<<<<<<< HEAD:db/migrate/20240522111233_create_coauthorships.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160628_create_coauthorships.decidim.rb
class CreateCoauthorships < ActiveRecord::Migration[5.1]
  def change
    create_table :decidim_coauthorships do |t|
      t.references :decidim_author, null: false, index: { name: "index_author_on_coauthorsihp" }
      t.references :decidim_user_group, index: { name: "index_user_group_on_coauthorsihp" }
      t.references :coauthorable, polymorphic: true, index: { name: "index_coauthorable_on_coauthorship" }

      t.timestamps
    end
  end
end
