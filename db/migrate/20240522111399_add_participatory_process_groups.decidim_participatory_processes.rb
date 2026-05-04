# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20170228142440)
<<<<<<< HEAD:db/migrate/20240522111399_add_participatory_process_groups.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160780_add_participatory_process_groups.decidim_participatory_processes.rb
class AddParticipatoryProcessGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :decidim_participatory_process_groups do |t|
      t.jsonb :name, null: false
      t.jsonb :description, null: false
      t.string :hero_image

      t.references :decidim_organization, index: { name: "decidim_participatory_process_group_organization" }

      t.timestamps
    end

    add_column :decidim_participatory_processes, :decidim_participatory_process_group_id, :integer
  end
end
