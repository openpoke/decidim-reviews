# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20180930125321)
<<<<<<< HEAD:db/migrate/20240522111504_add_position_to_proposals.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160883_add_position_to_proposals.decidim_proposals.rb
class AddPositionToProposals < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_proposals_proposals, :position, :integer
  end
end
