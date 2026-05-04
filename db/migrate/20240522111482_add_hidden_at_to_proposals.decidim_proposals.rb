# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20170220152416)
<<<<<<< HEAD:db/migrate/20240522111482_add_hidden_at_to_proposals.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160861_add_hidden_at_to_proposals.decidim_proposals.rb
class AddHiddenAtToProposals < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_proposals_proposals, :hidden_at, :datetime
  end
end
