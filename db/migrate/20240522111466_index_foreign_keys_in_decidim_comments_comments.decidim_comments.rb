# frozen_string_literal: true

# This migration comes from decidim_comments (originally 20200320105911)
<<<<<<< HEAD:db/migrate/20240522111466_index_foreign_keys_in_decidim_comments_comments.decidim_comments.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160846_index_foreign_keys_in_decidim_comments_comments.decidim_comments.rb
class IndexForeignKeysInDecidimCommentsComments < ActiveRecord::Migration[5.2]
  def change
    add_index :decidim_comments_comments, :decidim_user_group_id
  end
end
