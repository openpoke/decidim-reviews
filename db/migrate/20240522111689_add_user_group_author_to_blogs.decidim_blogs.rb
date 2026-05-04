# frozen_string_literal: true

# This migration comes from decidim_blogs (originally 20191212162606)
<<<<<<< HEAD:db/migrate/20240522111689_add_user_group_author_to_blogs.decidim_blogs.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161057_add_user_group_author_to_blogs.decidim_blogs.rb
class AddUserGroupAuthorToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_blogs_posts, :decidim_user_group_id, :integer
  end
end
