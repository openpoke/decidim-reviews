# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20171220084719)
<<<<<<< HEAD:db/migrate/20240522111490_add_published_at_to_proposals.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160869_add_published_at_to_proposals.decidim_proposals.rb
class AddPublishedAtToProposals < ActiveRecord::Migration[5.1]
  def up
    add_column :decidim_proposals_proposals, :published_at, :datetime, index: true
    # rubocop:disable Rails/SkipsModelValidations
    Decidim::Proposals::Proposal.unscoped.update_all("published_at = updated_at")
    # rubocop:enable Rails/SkipsModelValidations
  end

  def down
    remove_column :decidim_proposals_proposals, :published_at
  end
end
