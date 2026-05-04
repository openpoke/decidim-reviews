# frozen_string_literal: true

# This migration comes from decidim (originally 20170529150743)
<<<<<<< HEAD:db/migrate/20240522111182_add_rejected_at_to_user_groups.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160577_add_rejected_at_to_user_groups.decidim.rb
class AddRejectedAtToUserGroups < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_user_groups, :rejected_at, :datetime
  end
end
