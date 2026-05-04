# frozen_string_literal: true

# This migration comes from decidim (originally 20171011194251)
<<<<<<< HEAD:db/migrate/20240522111205_add_verification_metadata_to_authorizations.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160600_add_verification_metadata_to_authorizations.decidim.rb
class AddVerificationMetadataToAuthorizations < ActiveRecord::Migration[5.1]
  def up
    add_column :decidim_authorizations, :verification_metadata, :jsonb, default: {}
  end

  def down
    remove_column :decidim_authorizations, :verification_metadata
  end
end
