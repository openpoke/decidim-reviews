# frozen_string_literal: true

# This migration comes from decidim (originally 20170116110851)
<<<<<<< HEAD:db/migrate/20240522111156_create_identities.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160551_create_identities.decidim.rb
class CreateIdentities < ActiveRecord::Migration[5.0]
  def change
    create_table :decidim_identities do |t|
      t.string :provider, null: false
      t.string :uid, null: false
      t.references :decidim_user, null: false, index: true
    end

    add_index :decidim_identities, [:provider, :uid], unique: true
  end
end
