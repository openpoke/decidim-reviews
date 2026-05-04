# frozen_string_literal: true

# This migration comes from decidim (originally 20170207091021)
<<<<<<< HEAD:db/migrate/20240522111171_add_social_media_handlers_to_organization.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160566_add_social_media_handlers_to_organization.decidim.rb
class AddSocialMediaHandlersToOrganization < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_organizations, :instagram_handler, :string
    add_column :decidim_organizations, :facebook_handler, :string
    add_column :decidim_organizations, :youtube_handler, :string
    add_column :decidim_organizations, :github_handler, :string
  end
end
