# frozen_string_literal: true

# This migration comes from decidim (originally 20201011081626)
<<<<<<< HEAD:db/migrate/20240522111313_add_current_suspension_id_to_decidim_users.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160708_add_current_suspension_id_to_decidim_users.decidim.rb
class AddCurrentSuspensionIdToDecidimUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_users, :suspension_id, :integer
  end
end
