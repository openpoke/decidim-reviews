# frozen_string_literal: true

# This migration comes from decidim_assemblies (originally 20180124083729)
<<<<<<< HEAD:db/migrate/20240522111431_add_private_to_assemblies.decidim_assemblies.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160811_add_private_to_assemblies.decidim_assemblies.rb
class AddPrivateToAssemblies < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_assemblies, :private_space, :boolean, default: false
  end
end
