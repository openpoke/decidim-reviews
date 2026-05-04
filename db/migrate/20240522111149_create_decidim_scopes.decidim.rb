# frozen_string_literal: true

# This migration comes from decidim (originally 20161130105257)
<<<<<<< HEAD:db/migrate/20240522111149_create_decidim_scopes.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160544_create_decidim_scopes.decidim.rb
class CreateDecidimScopes < ActiveRecord::Migration[5.0]
  def change
    create_table :decidim_scopes do |t|
      t.string :name, null: false, index: :uniqueness
      t.references :decidim_organization, foreign_key: true, index: true
      t.timestamps
    end
  end
end
