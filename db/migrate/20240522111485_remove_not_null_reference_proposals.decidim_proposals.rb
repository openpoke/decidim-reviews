# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20170410073742)
<<<<<<< HEAD:db/migrate/20240522111485_remove_not_null_reference_proposals.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160864_remove_not_null_reference_proposals.decidim_proposals.rb
class RemoveNotNullReferenceProposals < ActiveRecord::Migration[5.0]
  def change
    change_column_null :decidim_proposals_proposals, :reference, true
  end
end
