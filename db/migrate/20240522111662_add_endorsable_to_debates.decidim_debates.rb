# frozen_string_literal: true

# This migration comes from decidim_debates (originally 20200716143929)
<<<<<<< HEAD:db/migrate/20240522111662_add_endorsable_to_debates.decidim_debates.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161030_add_endorsable_to_debates.decidim_debates.rb
class AddEndorsableToDebates < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_debates_debates, :endorsements_count, :integer, null: false, default: 0
    add_index :decidim_debates_debates, :endorsements_count, name: "idx_decidim_debates_debates_on_endorsemnts_count"
  end
end
