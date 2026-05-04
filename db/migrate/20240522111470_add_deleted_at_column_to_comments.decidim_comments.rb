# frozen_string_literal: true

# This migration comes from decidim_comments (originally 20210529095942)
<<<<<<< HEAD:db/migrate/20240522111470_add_deleted_at_column_to_comments.decidim_comments.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160850_add_deleted_at_column_to_comments.decidim_comments.rb
class AddDeletedAtColumnToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :decidim_comments_comments, :deleted_at, :datetime
  end
end
