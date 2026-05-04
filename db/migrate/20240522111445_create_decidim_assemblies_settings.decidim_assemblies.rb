# frozen_string_literal: true

# This migration comes from decidim_assemblies (originally 20200430202456)
<<<<<<< HEAD:db/migrate/20240522111445_create_decidim_assemblies_settings.decidim_assemblies.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160825_create_decidim_assemblies_settings.decidim_assemblies.rb
class CreateDecidimAssembliesSettings < ActiveRecord::Migration[5.2]
  def change
    create_table :decidim_assemblies_settings do |t|
      t.boolean :enable_organization_chart, default: true
      t.references :decidim_organization, foreign_key: true
    end
  end
end
