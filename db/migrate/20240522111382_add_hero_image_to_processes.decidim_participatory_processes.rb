# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20161011125616)
<<<<<<< HEAD:db/migrate/20240522111382_add_hero_image_to_processes.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160763_add_hero_image_to_processes.decidim_participatory_processes.rb
class AddHeroImageToProcesses < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_participatory_processes, :hero_image, :string
  end
end
