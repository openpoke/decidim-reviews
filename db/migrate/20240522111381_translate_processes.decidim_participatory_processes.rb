# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20161010102356)
<<<<<<< HEAD:db/migrate/20240522111381_translate_processes.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160762_translate_processes.decidim_participatory_processes.rb
class TranslateProcesses < ActiveRecord::Migration[5.0]
  def change
    remove_column :decidim_participatory_processes, :title
    remove_column :decidim_participatory_processes, :subtitle
    remove_column :decidim_participatory_processes, :description
    remove_column :decidim_participatory_processes, :short_description

    change_table :decidim_participatory_processes do |t|
      t.jsonb :title, null: false
      t.jsonb :subtitle, null: false
      t.jsonb :short_description, null: false
      t.jsonb :description, null: false
    end
  end
end
