# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20180930125321)
<<<<<<< HEAD:db/migrate/20240522111503_add_participatory_text_level_to_proposals.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160882_add_participatory_text_level_to_proposals.decidim_proposals.rb
class AddParticipatoryTextLevelToProposals < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_proposals_proposals, :participatory_text_level, :string
  end
end
