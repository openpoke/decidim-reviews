# frozen_string_literal: true

# This migration comes from decidim (originally 20171013124505)
<<<<<<< HEAD:db/migrate/20240522111206_add_verification_attachment_to_authorizations.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160601_add_verification_attachment_to_authorizations.decidim.rb
class AddVerificationAttachmentToAuthorizations < ActiveRecord::Migration[5.1]
  def change
    change_table :decidim_authorizations do |t|
      t.string :verification_attachment
    end
  end
end
