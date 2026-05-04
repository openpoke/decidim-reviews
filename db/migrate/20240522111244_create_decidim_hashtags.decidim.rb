# frozen_string_literal: true

# This migration comes from decidim (originally 20180726112510)
<<<<<<< HEAD:db/migrate/20240522111244_create_decidim_hashtags.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160639_create_decidim_hashtags.decidim.rb
class CreateDecidimHashtags < ActiveRecord::Migration[5.2]
  def self.up
    create_table :decidim_hashtags do |t|
      t.references :decidim_organization

      t.string :name, index: true

      t.timestamps
    end
  end

  def self.down
    drop_table :decidim_hashtags
  end
end
