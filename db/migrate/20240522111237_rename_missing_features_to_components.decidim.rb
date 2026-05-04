# frozen_string_literal: true

# This migration comes from decidim (originally 20180613080638)
<<<<<<< HEAD:db/migrate/20240522111237_rename_missing_features_to_components.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160632_rename_missing_features_to_components.decidim.rb
class RenameMissingFeaturesToComponents < ActiveRecord::Migration[5.1]
  class Notification < ApplicationRecord
    self.table_name = :decidim_notifications
  end

  def up
    # rubocop:disable Rails/SkipsModelValidations
    Notification.where(decidim_resource_type: "Decidim::Feature").update_all(decidim_resource_type: "Decidim::Component")
    Notification.where(event_class: "Decidim::FeaturePublishedEvent").update_all(event_class: "Decidim::ComponentPublishedEvent")
    Notification.where(event_name: "decidim.events.features.feature_published").update_all(event_name: "decidim.events.components.component_published")
    # rubocop:enable Rails/SkipsModelValidations
  end
end
