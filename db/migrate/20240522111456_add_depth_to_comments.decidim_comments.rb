# frozen_string_literal: true

# This migration comes from decidim_comments (originally 20161214082645)
<<<<<<< HEAD:db/migrate/20240522111456_add_depth_to_comments.decidim_comments.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160836_add_depth_to_comments.decidim_comments.rb
class AddDepthToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_comments_comments, :depth, :integer, null: false, default: 0
  end
end
