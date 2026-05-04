# frozen_string_literal: true

# This migration comes from decidim_pages (originally 20170110145040)
<<<<<<< HEAD:db/migrate/20240522111452_remove_commentable_flag_from_pages.decidim_pages.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160832_remove_commentable_flag_from_pages.decidim_pages.rb
class RemoveCommentableFlagFromPages < ActiveRecord::Migration[5.0]
  def change
    remove_column :decidim_pages_pages, :commentable
  end
end
