# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20201013105520)
<<<<<<< HEAD:db/migrate/20240522111421_rename_name_column_to_title_in_decidim_participatory_process_groups.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160802_rename_name_column_to_title_in_decidim_participatory_process_groups.decidim_participatory_processes.rb
class RenameNameColumnToTitleInDecidimParticipatoryProcessGroups < ActiveRecord::Migration[5.2]
  def up
    rename_column :decidim_participatory_process_groups, :name, :title
    PaperTrail::Version.where(item_type: "Decidim::ParticipatoryProcessGroup").each do |version|
      # rubocop:disable Rails/SkipsModelValidations
      version.update_attribute(:object_changes, version.object_changes.gsub(/^name:/, "title:")) if version.object_changes.present?
      # rubocop:enable Rails/SkipsModelValidations

      next unless version.object.present? && version.object.has_key?("name")

      object = version.object
      object["title"] = object.delete("name")

      # rubocop:disable Rails/SkipsModelValidations
      version.update_attribute(:object, object)
      # rubocop:enable Rails/SkipsModelValidations
    end
  end

  def down
    PaperTrail::Version.where(item_type: "Decidim::ParticipatoryProcessGroup").each do |version|
      # rubocop:disable Rails/SkipsModelValidations
      version.update_attribute(:object_changes, version.object_changes.gsub(/^title:/, "name:")) if version.object_changes.present?
      # rubocop:enable Rails/SkipsModelValidations

      next unless version.object.present? && version.object.has_key?("title")

      object = version.object
      object["name"] = object.delete("title")

      # rubocop:disable Rails/SkipsModelValidations
      version.update_attribute(:object, object)
      # rubocop:enable Rails/SkipsModelValidations
    end
    rename_column :decidim_participatory_process_groups, :title, :name
  end
end
