# frozen_string_literal: true

# This migration comes from decidim_accountability (originally 20170928073905)
<<<<<<< HEAD:db/migrate/20240522111642_migrate_old_results.decidim_accountability.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161010_migrate_old_results.decidim_accountability.rb
class MigrateOldResults < ActiveRecord::Migration[5.1]
  class OldResult < ApplicationRecord
    self.table_name = :decidim_results_results
  end

  class Categorization < ApplicationRecord
    self.table_name = :decidim_categorizations
  end

  class Result < ApplicationRecord
    self.table_name = :decidim_accountability_results
  end

  class Feature < ApplicationRecord
    self.table_name = :decidim_features
  end

  class ResourceLink < ApplicationRecord
    self.table_name = :decidim_resource_links
  end

  def up
    return unless ActiveRecord::Base.connection.data_source_exists? :decidim_results_results

    # rubocop:disable Rails/SkipsModelValidations
    OldResult.find_each do |old_result|
      Result.create!(
        id: old_result.id,
        decidim_feature_id: old_result.decidim_feature_id,
        decidim_scope_id: old_result.decidim_scope_id,
        title: old_result.title,
        description: old_result.description
      )

      Categorization.where(
        categorizable_id: old_result.id,
        categorizable_type: "Decidim::Results::Result"
      ).update_all("categorizable_type = 'Decidim::Accountability::Result'")

      ResourceLink.where(
        from_id: old_result.id,
        from_type: "Decidim::Results::Result"
      ).update_all("from_type = 'Decidim::Accountability::Result'")
    end

    Feature.where(manifest_name: "results").update_all("manifest_name = 'accountability'")

    drop_table :decidim_results_results
  end
  # rubocop:enable Rails/SkipsModelValidations
end
