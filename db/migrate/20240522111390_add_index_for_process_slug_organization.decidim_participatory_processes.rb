# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20161110092735)
<<<<<<< HEAD:db/migrate/20240522111390_add_index_for_process_slug_organization.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160771_add_index_for_process_slug_organization.decidim_participatory_processes.rb
class AddIndexForProcessSlugOrganization < ActiveRecord::Migration[5.0]
  def change
    add_index :decidim_participatory_processes,
              [:decidim_organization_id, :slug],
              unique: true,
              name: "index_unique_process_slug_and_organization"
  end
end
