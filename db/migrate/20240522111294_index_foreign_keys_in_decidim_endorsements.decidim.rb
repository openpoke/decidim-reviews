# frozen_string_literal: true

# This migration comes from decidim (originally 20200320105919)
<<<<<<< HEAD:db/migrate/20240522111294_index_foreign_keys_in_decidim_endorsements.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160689_index_foreign_keys_in_decidim_endorsements.decidim.rb
class IndexForeignKeysInDecidimEndorsements < ActiveRecord::Migration[5.2]
  def change
    add_index :decidim_endorsements, :decidim_user_group_id
  end
end
