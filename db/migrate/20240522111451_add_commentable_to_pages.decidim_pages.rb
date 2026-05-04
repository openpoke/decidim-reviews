# frozen_string_literal: true

# This migration comes from decidim_pages (originally 20161214150429)
<<<<<<< HEAD:db/migrate/20240522111451_add_commentable_to_pages.decidim_pages.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160831_add_commentable_to_pages.decidim_pages.rb
class AddCommentableToPages < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_pages_pages, :commentable, :boolean, null: false, default: false
  end
end
