# frozen_string_literal: true

# This migration comes from decidim (originally 20170612100253)
<<<<<<< HEAD:db/migrate/20240522111188_create_decidim_categorizations.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160583_create_decidim_categorizations.decidim.rb
class CreateDecidimCategorizations < ActiveRecord::Migration[5.1]
  def change
    create_table :decidim_categorizations do |t|
      t.references :decidim_category, foreign_key: true, null: false
      t.references :categorizable, polymorphic: true, null: false, index: { name: "decidim_categorizations_categorizable_id_and_type" }

      t.timestamps
    end
  end
end
