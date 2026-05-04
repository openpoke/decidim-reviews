# frozen_string_literal: true

# This migration comes from decidim_assemblies (originally 20170822153055)
<<<<<<< HEAD:db/migrate/20240522111429_add_scopes_enabled_to_assemblies.decidim_assemblies.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160809_add_scopes_enabled_to_assemblies.decidim_assemblies.rb
class AddScopesEnabledToAssemblies < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_assemblies, :scopes_enabled, :boolean, null: false, default: true
  end
end
