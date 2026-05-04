# frozen_string_literal: true

# This migration comes from decidim (originally 20180706104107)
<<<<<<< HEAD:db/migrate/20240522111240_add_nickname_to_managed_users.decidim.rb
# This file has been modified by `decidim upgrade:migrations` task on 2025-10-09 08:35:35 UTC
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160635_add_nickname_to_managed_users.decidim.rb
class AddNicknameToManagedUsers < ActiveRecord::Migration[5.2]
  class User < ApplicationRecord
    self.table_name = :decidim_users
  end

  def up
    User.where(managed: true, nickname: nil).includes(:organization).find_each do |user|
      user.nickname = UserBaseEntity.nicknamize(user.name, user.decidim_organization_id)
      user.save
    end
  end
end
