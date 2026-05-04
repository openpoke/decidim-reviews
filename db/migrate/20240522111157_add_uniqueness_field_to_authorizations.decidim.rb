# frozen_string_literal: true

# This migration comes from decidim (originally 20170117142904)
<<<<<<< HEAD:db/migrate/20240522111157_add_uniqueness_field_to_authorizations.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160552_add_uniqueness_field_to_authorizations.decidim.rb
class AddUniquenessFieldToAuthorizations < ActiveRecord::Migration[5.0]
  def change
    change_table :decidim_authorizations do |t|
      t.string :unique_id, null: true
    end
  end
end
