# frozen_string_literal: true

# This migration comes from decidim (originally 20210208134328)
<<<<<<< HEAD:db/migrate/20240522111320_add_email_on_moderations_to_users.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160715_add_email_on_moderations_to_users.decidim.rb
class AddEmailOnModerationsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_users, :email_on_moderations, :boolean, default: true
  end
end
