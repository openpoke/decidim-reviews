# frozen_string_literal: true

# This migration comes from decidim (originally 20180115090038)
<<<<<<< HEAD:db/migrate/20240522111214_extend_user_profile.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160609_extend_user_profile.decidim.rb
class ExtendUserProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_users, :personal_url, :string
    add_column :decidim_users, :about, :text
  end
end
