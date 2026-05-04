# frozen_string_literal: true

# This migration comes from decidim_debates (originally 20200703134657)
<<<<<<< HEAD:db/migrate/20240522111660_close_debates.decidim_debates.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161028_close_debates.decidim_debates.rb
class CloseDebates < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_debates_debates, :closed_at, :datetime
    add_column :decidim_debates_debates, :conclusions, :jsonb
    add_index :decidim_debates_debates, :closed_at
  end
end
