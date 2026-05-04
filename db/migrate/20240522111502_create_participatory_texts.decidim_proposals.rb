# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20180927111721)
<<<<<<< HEAD:db/migrate/20240522111502_create_participatory_texts.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160881_create_participatory_texts.decidim_proposals.rb
class CreateParticipatoryTexts < ActiveRecord::Migration[5.2]
  def change
    create_table :decidim_proposals_participatory_texts do |t|
      t.jsonb :title
      t.jsonb :description
      t.belongs_to :decidim_component, null: false, index: { name: "idx_participatory_texts_on_decidim_component_id" }

      t.timestamps
    end
  end
end
