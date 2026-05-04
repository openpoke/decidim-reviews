# frozen_string_literal: true

# This migration comes from decidim_comments (originally 20181003080320)
<<<<<<< HEAD:db/migrate/20240522111463_fix_user_groups_ids_in_comments.decidim_comments.rb
# This file has been modified by `decidim upgrade:migrations` task on 2025-05-08 14:27:29 UTC
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160843_fix_user_groups_ids_in_comments.decidim_comments.rb
class FixUserGroupsIdsInComments < ActiveRecord::Migration[5.2]
  class UserGroup < ApplicationRecord
    self.table_name = :decidim_users
    self.inheritance_column = nil # disable the default inheritance

    default_scope { where(type: "Decidim::UserGroup") }
  end

  # rubocop:disable Rails/SkipsModelValidations
  def change
    UserGroup.find_each do |group|
      old_id = group.extended_data["old_user_group_id"]
      next unless old_id

      Decidim::Comments::Comment
        .where(decidim_user_group_id: old_id)
        .update_all(decidim_user_group_id: group.id)
    end
  end
  # rubocop:enable Rails/SkipsModelValidations
end
