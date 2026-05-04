# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20200827154156)
<<<<<<< HEAD:db/migrate/20240522111521_add_commentable_counter_cache_to_proposals.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160900_add_commentable_counter_cache_to_proposals.decidim_proposals.rb
class AddCommentableCounterCacheToProposals < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_proposals_proposals, :comments_count, :integer, null: false, default: 0, index: true
    add_column :decidim_proposals_collaborative_drafts, :comments_count, :integer, null: false, default: 0, index: true
    Decidim::Proposals::Proposal.reset_column_information
    Decidim::Proposals::Proposal.unscoped.find_each(&:update_comments_count)
    Decidim::Proposals::CollaborativeDraft.unscoped.reset_column_information
    Decidim::Proposals::CollaborativeDraft.unscoped.find_each(&:update_comments_count)
  end
end
