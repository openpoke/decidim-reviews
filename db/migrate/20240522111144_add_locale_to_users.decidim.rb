# frozen_string_literal: true

# This migration comes from decidim (originally 20161010131544)
<<<<<<< HEAD:db/migrate/20240522111144_add_locale_to_users.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160539_add_locale_to_users.decidim.rb
class AddLocaleToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_users, :locale, :string
  end
end
