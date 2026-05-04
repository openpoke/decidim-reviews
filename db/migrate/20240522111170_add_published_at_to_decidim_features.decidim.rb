# frozen_string_literal: true

# This migration comes from decidim (originally 20170206142116)
<<<<<<< HEAD:db/migrate/20240522111170_add_published_at_to_decidim_features.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160565_add_published_at_to_decidim_features.decidim.rb
class AddPublishedAtToDecidimFeatures < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_features, :published_at, :datetime
    execute "UPDATE decidim_features SET published_at=#{quote(Time.current)}"
  end
end
