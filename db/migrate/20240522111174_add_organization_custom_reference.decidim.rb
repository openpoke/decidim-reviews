# frozen_string_literal: true

# This migration comes from decidim (originally 20170215115407)
<<<<<<< HEAD:db/migrate/20240522111174_add_organization_custom_reference.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160569_add_organization_custom_reference.decidim.rb
class AddOrganizationCustomReference < ActiveRecord::Migration[5.0]
  class Organization < ApplicationRecord
    self.table_name = :decidim_organizations
  end

  def change
    add_column :decidim_organizations, :reference_prefix, :string

    Organization.find_each do |organization|
      organization.update!(reference_prefix: organization.name[0])
    end

    change_column_null :decidim_organizations, :reference_prefix, false
  end
end
