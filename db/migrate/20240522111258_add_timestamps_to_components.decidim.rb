# frozen_string_literal: true

# This migration comes from decidim (originally 20181025082245)
<<<<<<< HEAD:db/migrate/20240522111258_add_timestamps_to_components.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160653_add_timestamps_to_components.decidim.rb
class AddTimestampsToComponents < ActiveRecord::Migration[5.2]
  class Component < ApplicationRecord
    self.table_name = :decidim_components
  end

  def change
    add_timestamps :decidim_components, null: true

    # rubocop:disable Rails/SkipsModelValidations
    Component.update_all(created_at: Time.current, updated_at: Time.current)
    # rubocop:enable Rails/SkipsModelValidations

    change_column_null :decidim_components, :created_at, false
    change_column_null :decidim_components, :updated_at, false
  end
end
