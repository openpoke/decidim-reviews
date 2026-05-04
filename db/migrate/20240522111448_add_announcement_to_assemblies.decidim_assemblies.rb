# frozen_string_literal: true

# This migration comes from decidim_assemblies (originally 20210507063604)
<<<<<<< HEAD:db/migrate/20240522111448_add_announcement_to_assemblies.decidim_assemblies.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160828_add_announcement_to_assemblies.decidim_assemblies.rb
class AddAnnouncementToAssemblies < ActiveRecord::Migration[6.0]
  def change
    add_column :decidim_assemblies, :announcement, :jsonb
  end
end
