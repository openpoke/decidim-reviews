# frozen_string_literal: true

# This migration comes from decidim_admin (originally 20191118112040)
<<<<<<< HEAD:db/migrate/20240522111359_add_accepted_admin_terms_at_field_to_users.decidim_admin.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160744_add_accepted_admin_terms_at_field_to_users.decidim_admin.rb
class AddAcceptedAdminTermsAtFieldToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_users, :admin_terms_accepted_at, :datetime
  end
end
