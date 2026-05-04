# frozen_string_literal: true

# This migration comes from decidim (originally 20170612070905)
<<<<<<< HEAD:db/migrate/20240522111187_add_uniqueness_to_name_and_document_number_to_user_groups.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160582_add_uniqueness_to_name_and_document_number_to_user_groups.decidim.rb
class AddUniquenessToNameAndDocumentNumberToUserGroups < ActiveRecord::Migration[5.0]
  def change
    add_index :decidim_user_groups, [:decidim_organization_id, :name], unique: true, name: "index_decidim_user_groups_names_on_organization_id"
    add_index :decidim_user_groups, [:decidim_organization_id, :document_number], unique: true, name: "index_decidim_user_groups_document_number_on_organization_id"
  end
end
