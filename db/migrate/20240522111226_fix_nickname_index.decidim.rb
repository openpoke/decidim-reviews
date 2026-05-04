# frozen_string_literal: true

# This migration comes from decidim (originally 20180221101934)
<<<<<<< HEAD:db/migrate/20240522111226_fix_nickname_index.decidim.rb
# This file has been modified by `decidim upgrade:migrations` task on 2025-10-09 08:35:35 UTC
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160621_fix_nickname_index.decidim.rb
class FixNicknameIndex < ActiveRecord::Migration[5.1]
  class User < ApplicationRecord
    self.table_name = :decidim_users

    include Decidim::Nicknamizable
  end

  def change
    User.where(nickname: nil)
        .where(deleted_at: nil)
        .where(managed: false)
        .find_each { |u| u.update(nickname: UserBaseEntity.nicknamize(u.name, u.decidim_organization_id)) }

    # rubocop:disable Rails/SkipsModelValidations
    User.where(nickname: nil).update_all("nickname = ''")
    # rubocop:enable Rails/SkipsModelValidations

    change_column_default :decidim_users, :nickname, ""
    change_column_null(:decidim_users, :nickname, false)
  end
end
