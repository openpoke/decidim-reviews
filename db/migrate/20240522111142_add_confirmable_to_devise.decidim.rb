# frozen_string_literal: true

# This migration comes from decidim (originally 20161006085629)
<<<<<<< HEAD:db/migrate/20240522111142_add_confirmable_to_devise.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160537_add_confirmable_to_devise.decidim.rb
class AddConfirmableToDevise < ActiveRecord::Migration[5.0]
  def up
    add_column :decidim_users, :confirmation_token, :string
    add_column :decidim_users, :confirmed_at, :datetime
    add_column :decidim_users, :confirmation_sent_at, :datetime
    add_column :decidim_users, :unconfirmed_email, :string
    add_index :decidim_users, :confirmation_token, unique: true
    execute("UPDATE decidim_users SET confirmed_at = NOW()")
  end

  def down
    remove_columns :decidim_users, :confirmation_token, :confirmed_at, :confirmation_sent_at
  end
end
