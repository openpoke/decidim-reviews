# frozen_string_literal: true

# This migration comes from decidim (originally 20181029112820)
<<<<<<< HEAD:db/migrate/20240522111259_fix_user_follows.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160654_fix_user_follows.decidim.rb
class FixUserFollows < ActiveRecord::Migration[5.2]
  class Follow < ApplicationRecord
    self.table_name = "decidim_follows"

    belongs_to :followable, foreign_key: "decidim_followable_id", foreign_type: "decidim_followable_type", polymorphic: true
    belongs_to :user, foreign_key: "decidim_user_id", class_name: "Decidim::User"
  end

  def change
    # rubocop:disable Rails/SkipsModelValidations
    Follow.where(
      decidim_followable_type: "Decidim::User"
    ).update_all(decidim_followable_type: "Decidim::UserBaseEntity")
    # rubocop:enable Rails/SkipsModelValidations
  end
end
