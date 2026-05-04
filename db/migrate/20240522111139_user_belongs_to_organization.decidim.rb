# frozen_string_literal: true

# This migration comes from decidim (originally 20160920141039)
<<<<<<< HEAD:db/migrate/20240522111139_user_belongs_to_organization.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160534_user_belongs_to_organization.decidim.rb
class UserBelongsToOrganization < ActiveRecord::Migration[5.0]
  def change
    add_reference :decidim_users, :decidim_organization, index: true, foreign_key: true
  end
end
