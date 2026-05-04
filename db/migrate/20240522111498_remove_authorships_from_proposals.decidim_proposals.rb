# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20180529110830)
<<<<<<< HEAD:db/migrate/20240522111498_remove_authorships_from_proposals.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160877_remove_authorships_from_proposals.decidim_proposals.rb
class RemoveAuthorshipsFromProposals < ActiveRecord::Migration[5.1]
  def change
    remove_column :decidim_proposals_proposals, :decidim_author_id, :integer
    remove_column :decidim_proposals_proposals, :decidim_user_group_id, :integer
  end
end
