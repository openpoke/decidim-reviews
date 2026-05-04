# frozen_string_literal: true

# This migration comes from decidim (originally 20220518094535)
<<<<<<< HEAD:db/migrate/20240522111342_add_previous_passwords_to_users.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160737_add_previous_passwords_to_users.decidim.rb
class AddPreviousPasswordsToUsers < ActiveRecord::Migration[6.1]
  class User < ApplicationRecord
    self.table_name = :decidim_users
  end

  def change
    add_column :decidim_users, :password_updated_at, :datetime
    add_column :decidim_users, :previous_passwords, :string, array: true, default: []

    reversible do |direction|
      direction.up do
        # rubocop:disable Rails/SkipsModelValidations
        User.update_all("password_updated_at = updated_at")
        # rubocop:enable Rails/SkipsModelValidations
      end
    end
  end
end
