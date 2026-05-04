# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20211125202008)
<<<<<<< HEAD:db/migrate/20240522111426_create_decidim_participatory_process_types.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160807_create_decidim_participatory_process_types.decidim_participatory_processes.rb
class CreateDecidimParticipatoryProcessTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :decidim_participatory_process_types do |t|
      t.jsonb :title, null: false
      t.references(
        :decidim_organization,
        foreign_key: true,
        index: { name: "index_decidim_process_types_on_decidim_organization_id" }
      )
      t.timestamps
    end

    add_reference(
      :decidim_participatory_processes,
      :decidim_participatory_process_type,
      foreign_key: true,
      index: { name: "index_decidim_processes_on_decidim_process_type_id" }
    )
  end
end
