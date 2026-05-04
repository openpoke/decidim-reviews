# frozen_string_literal: true

# This migration comes from decidim (originally 20170914075721)
<<<<<<< HEAD:db/migrate/20240522111202_remove_followable_index_from_follows.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160597_remove_followable_index_from_follows.decidim.rb
class RemoveFollowableIndexFromFollows < ActiveRecord::Migration[5.1]
  def change
    remove_index :decidim_follows, [:decidim_followable_id, :decidim_followable_type]
  end
end
