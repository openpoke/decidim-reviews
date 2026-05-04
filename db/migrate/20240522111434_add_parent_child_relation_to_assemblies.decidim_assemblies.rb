# frozen_string_literal: true

# This migration comes from decidim_assemblies (originally 20180226103942)
<<<<<<< HEAD:db/migrate/20240522111434_add_parent_child_relation_to_assemblies.decidim_assemblies.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160814_add_parent_child_relation_to_assemblies.decidim_assemblies.rb
class AddParentChildRelationToAssemblies < ActiveRecord::Migration[5.1]
  def change
    unless extension_enabled?("ltree")
      begin
        # required so that test suite works in ci env
        enable_extension "ltree"
      rescue StandardError
        raise <<-MSG.squish
        Decidim requires the ltree extension to be enabled in your PostgreSQL.
        You can do so by running `CREATE EXTENSION IF NOT EXISTS "ltree";` on the current DB as a PostgreSQL
        super user.
        MSG
      end
    end

    add_reference :decidim_assemblies, :parent, index: { name: :decidim_assemblies_assemblies_on_parent_id }
    add_column :decidim_assemblies, :parents_path, :ltree
    add_column :decidim_assemblies, :children_count, :integer, default: 0
  end
end
