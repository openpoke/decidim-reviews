# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20181010114622)
<<<<<<< HEAD:db/migrate/20240522111506_add_temporary_votes.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160885_add_temporary_votes.decidim_proposals.rb
class AddTemporaryVotes < ActiveRecord::Migration[5.2]
  def change
    change_table :decidim_proposals_proposal_votes do |t|
      t.boolean :temporary, null: false, default: false
    end
  end
end
