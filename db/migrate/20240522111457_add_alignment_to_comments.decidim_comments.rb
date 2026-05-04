# frozen_string_literal: true

# This migration comes from decidim_comments (originally 20161216102820)
<<<<<<< HEAD:db/migrate/20240522111457_add_alignment_to_comments.decidim_comments.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160837_add_alignment_to_comments.decidim_comments.rb
class AddAlignmentToComments < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_comments_comments, :alignment, :integer, null: false, default: 0
  end
end
