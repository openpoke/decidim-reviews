# frozen_string_literal: true

# This migration comes from decidim (originally 20181113101935)
<<<<<<< HEAD:db/migrate/20240522111263_create_decidim_contextual_help_sections.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160658_create_decidim_contextual_help_sections.decidim.rb
class CreateDecidimContextualHelpSections < ActiveRecord::Migration[5.2]
  def change
    create_table :decidim_contextual_help_sections do |t|
      t.string :section_id, null: false
      t.references :organization, null: false
      t.jsonb :content, null: false
    end
  end
end
