# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20170612101809)
<<<<<<< HEAD:db/migrate/20240522111486_migrate_proposals_category.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160865_migrate_proposals_category.decidim_proposals.rb
class MigrateProposalsCategory < ActiveRecord::Migration[5.1]
  def change
    # Create categorizations ensuring database integrity
    execute('
      INSERT INTO decidim_categorizations(decidim_category_id, categorizable_id, categorizable_type, created_at, updated_at)
        SELECT decidim_category_id, decidim_proposals_proposals.id, \'Decidim::Proposals::Proposal\', NOW(), NOW()
        FROM decidim_proposals_proposals
        INNER JOIN decidim_categories ON decidim_categories.id = decidim_proposals_proposals.decidim_category_id
    ')
    # Remove unused column
    remove_column :decidim_proposals_proposals, :decidim_category_id
  end
end
