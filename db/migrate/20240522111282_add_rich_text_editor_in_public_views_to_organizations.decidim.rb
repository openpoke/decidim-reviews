# frozen_string_literal: true

# This migration comes from decidim (originally 20191113144432)
<<<<<<< HEAD:db/migrate/20240522111282_add_rich_text_editor_in_public_views_to_organizations.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160677_add_rich_text_editor_in_public_views_to_organizations.decidim.rb
class AddRichTextEditorInPublicViewsToOrganizations < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_organizations,
               :rich_text_editor_in_public_views,
               :boolean,
               default: false
  end
end
