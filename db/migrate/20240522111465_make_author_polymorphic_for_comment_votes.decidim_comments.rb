# frozen_string_literal: true

# This migration comes from decidim_comments (originally 20181019092928)
<<<<<<< HEAD:db/migrate/20240522111465_make_author_polymorphic_for_comment_votes.decidim_comments.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160845_make_author_polymorphic_for_comment_votes.decidim_comments.rb
class MakeAuthorPolymorphicForCommentVotes < ActiveRecord::Migration[5.2]
  class CommentVote < ApplicationRecord
    self.table_name = :decidim_comments_comment_votes
  end

  def change
    add_column :decidim_comments_comment_votes, :decidim_author_type, :string

    reversible do |direction|
      direction.up do
        execute <<~SQL.squish
          UPDATE decidim_comments_comment_votes
          SET decidim_author_type = 'Decidim::UserBaseEntity'
        SQL
      end
    end

    add_index :decidim_comments_comment_votes,
              [:decidim_author_id, :decidim_author_type],
              name: "index_decidim_comments_comment_votes_on_decidim_author"

    change_column_null :decidim_comments_comment_votes, :decidim_author_id, false
    change_column_null :decidim_comments_comment_votes, :decidim_author_type, false
    CommentVote.reset_column_information
  end
end
