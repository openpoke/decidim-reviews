# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20200306123652)
<<<<<<< HEAD:db/migrate/20240522111518_publish_existing_proposals_state.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160897_publish_existing_proposals_state.decidim_proposals.rb
class PublishExistingProposalsState < ActiveRecord::Migration[5.2]
  def up
    execute <<-SQL.squish
      UPDATE decidim_proposals_proposals SET state_published_at = COALESCE(answered_at, published_at) WHERE state IS NOT NULL
    SQL
  end

  def down
    execute <<-SQL.squish
      UPDATE decidim_proposals_proposals SET state_published_at = NULL
    SQL
  end
end
