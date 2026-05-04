# frozen_string_literal: true

# This migration comes from decidim (originally 20200525184143)
<<<<<<< HEAD:db/migrate/20240522111302_add_enable_machine_translation_to_decidim_organizations.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160697_add_enable_machine_translation_to_decidim_organizations.decidim.rb
class AddEnableMachineTranslationToDecidimOrganizations < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_organizations, :enable_machine_translations, :boolean, default: false
  end
end
