# frozen_string_literal: true

# This migration comes from decidim (originally 20191204075509)
<<<<<<< HEAD:db/migrate/20240522111286_add_session_token_to_users.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160681_add_session_token_to_users.decidim.rb
class AddSessionTokenToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_users, :session_token, :string
  end
end
