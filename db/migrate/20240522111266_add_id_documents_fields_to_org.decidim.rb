# frozen_string_literal: true

# This migration comes from decidim (originally 20181126145142)
<<<<<<< HEAD:db/migrate/20240522111266_add_id_documents_fields_to_org.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160661_add_id_documents_fields_to_org.decidim.rb
class AddIdDocumentsFieldsToOrg < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_organizations, :id_documents_methods, :string, array: true, default: ["online"]
    add_column :decidim_organizations, :id_documents_explanation_text, :jsonb, default: {}

    # rubocop:disable Rails/SkipsModelValidations
    Decidim::Organization.reset_column_information
    Decidim::Organization.update_all(id_documents_methods: ["online"])
    # rubocop:enable Rails/SkipsModelValidations
  end
end
