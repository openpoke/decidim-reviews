# frozen_string_literal: true

# This migration comes from decidim_pages (originally 20170220091402)
<<<<<<< HEAD:db/migrate/20240522111453_remove_page_feature_titles.decidim_pages.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160833_remove_page_feature_titles.decidim_pages.rb
class RemovePageFeatureTitles < ActiveRecord::Migration[5.0]
  def change
    remove_column :decidim_pages_pages, :title
  end
end
