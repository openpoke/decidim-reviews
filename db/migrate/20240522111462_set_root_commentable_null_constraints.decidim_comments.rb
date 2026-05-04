# frozen_string_literal: true

# This migration comes from decidim_comments (originally 20170510091409)
<<<<<<< HEAD:db/migrate/20240522111462_set_root_commentable_null_constraints.decidim_comments.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160842_set_root_commentable_null_constraints.decidim_comments.rb
class SetRootCommentableNullConstraints < ActiveRecord::Migration[5.0]
  def change
    change_column_null(:decidim_comments_comments, :decidim_root_commentable_id, false)
    change_column_null(:decidim_comments_comments, :decidim_root_commentable_type, false)
  end
end
