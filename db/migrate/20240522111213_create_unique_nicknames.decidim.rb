# frozen_string_literal: true

# This migration comes from decidim (originally 20171212103803)
<<<<<<< HEAD:db/migrate/20240522111213_create_unique_nicknames.decidim.rb
# This file has been modified by `decidim upgrade:migrations` task on 2025-10-09 08:35:35 UTC
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160608_create_unique_nicknames.decidim.rb
class CreateUniqueNicknames < ActiveRecord::Migration[5.1]
  class User < ApplicationRecord
    include Decidim::Nicknamizable

    self.table_name = :decidim_users
  end

  def up
    add_column :decidim_users, :nickname, :string, limit: 20

    User.where.not(name: nil).find_each do |user|
      user.update!(nickname: UserBaseEntity.nicknamize(user.name, user.decidim_organization_id))
    end

    add_index :decidim_users,
              %w(nickname decidim_organization_id),
              where: "(deleted_at IS NULL) AND (managed = 'f')",
              name: "index_decidim_users_on_nickame_and_decidim_organization_id",
              unique: true
  end

  def down
    remove_index :decidim_users, %w(nickname decidim_organization_id)

    remove_column :decidim_users, :nickname
  end
end
