# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20170120151202)
<<<<<<< HEAD:db/migrate/20240522111476_add_user_group_id_to_proposals.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160855_add_user_group_id_to_proposals.decidim_proposals.rb
class AddUserGroupIdToProposals < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_proposals_proposals, :decidim_user_group_id, :integer, index: true
  end
end
