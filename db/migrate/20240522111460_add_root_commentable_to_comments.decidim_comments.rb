# frozen_string_literal: true

# This migration comes from decidim_comments (originally 20170504085413)
<<<<<<< HEAD:db/migrate/20240522111460_add_root_commentable_to_comments.decidim_comments.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160840_add_root_commentable_to_comments.decidim_comments.rb
class AddRootCommentableToComments < ActiveRecord::Migration[5.0]
  def change
    change_table :decidim_comments_comments do |t|
      t.references :decidim_root_commentable, polymorphic: true, index: { name: "decidim_comments_comment_root_commentable" }
    end
  end
end
