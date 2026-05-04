# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20161011141033)
<<<<<<< HEAD:db/migrate/20240522111383_add_banner_image_to_processes.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160764_add_banner_image_to_processes.decidim_participatory_processes.rb
class AddBannerImageToProcesses < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_participatory_processes, :banner_image, :string
  end
end
