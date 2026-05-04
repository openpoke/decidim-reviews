# frozen_string_literal: true

# This migration comes from decidim (originally 20200211173227)
<<<<<<< HEAD:db/migrate/20240522111289_add_direct_message_types_to_users.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160684_add_direct_message_types_to_users.decidim.rb
class AddDirectMessageTypesToUsers < ActiveRecord::Migration[5.2]
  class UserBaseEntity < ApplicationRecord
    self.table_name = :decidim_users
    self.inheritance_column = nil # disable the default inheritance
  end

  def change
    add_column :decidim_users, :direct_message_types, :string, default: "all"
    # rubocop:disable Rails/SkipsModelValidations
    UserBaseEntity.update_all(direct_message_types: "all")
    # rubocop:enable Rails/SkipsModelValidations

    change_column_null :decidim_users, :direct_message_types, false
  end
end
