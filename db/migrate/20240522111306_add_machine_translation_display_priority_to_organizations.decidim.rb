# frozen_string_literal: true

# This migration comes from decidim (originally 20200806092109)
<<<<<<< HEAD:db/migrate/20240522111306_add_machine_translation_display_priority_to_organizations.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160701_add_machine_translation_display_priority_to_organizations.decidim.rb
class AddMachineTranslationDisplayPriorityToOrganizations < ActiveRecord::Migration[5.2]
  class Organization < ApplicationRecord
    self.table_name = "decidim_organizations"
  end

  def change
    add_column :decidim_organizations, :machine_translation_display_priority, :string

    Organization.reset_column_information
    Organization.update_all(machine_translation_display_priority: :original) # rubocop:disable Rails/SkipsModelValidations

    change_column_default :decidim_organizations, :machine_translation_display_priority, "original"
    change_column_null :decidim_organizations, :machine_translation_display_priority, false
  end
end
