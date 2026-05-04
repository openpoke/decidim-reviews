# frozen_string_literal: true

# This migration comes from decidim (originally 20191118123154)
<<<<<<< HEAD:db/migrate/20240522111284_add_admin_terms_of_use_body_field_to_organization.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160679_add_admin_terms_of_use_body_field_to_organization.decidim.rb
class AddAdminTermsOfUseBodyFieldToOrganization < ActiveRecord::Migration[5.2]
  def change
    change_table :decidim_organizations do |t|
      t.jsonb :admin_terms_of_use_body, null: true
    end
  end
end
