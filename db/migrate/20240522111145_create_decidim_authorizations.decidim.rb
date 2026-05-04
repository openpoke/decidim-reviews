# frozen_string_literal: true

# This migration comes from decidim (originally 20161018091013)
<<<<<<< HEAD:db/migrate/20240522111145_create_decidim_authorizations.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160540_create_decidim_authorizations.decidim.rb
class CreateDecidimAuthorizations < ActiveRecord::Migration[5.0]
  def change
    create_table :decidim_authorizations do |t|
      t.string :name, null: false
      t.jsonb :metadata
      t.references :decidim_user, null: false, foreign_key: true, index: true

      t.timestamps
    end

    add_index :decidim_authorizations, [:decidim_user_id, :name], unique: true
  end
end
