# frozen_string_literal: true

# This migration comes from decidim (originally 20200707132401)
<<<<<<< HEAD:db/migrate/20240522111304_add_comments_max_length_to_decidim_organization.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160699_add_comments_max_length_to_decidim_organization.decidim.rb
class AddCommentsMaxLengthToDecidimOrganization < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_organizations, :comments_max_length, :integer, default: 1000
  end
end
