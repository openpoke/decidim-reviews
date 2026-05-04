# frozen_string_literal: true

# This migration comes from decidim (originally 20181022090732)
<<<<<<< HEAD:db/migrate/20240522111256_add_columns_to_pages.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160651_add_columns_to_pages.decidim.rb
class AddColumnsToPages < ActiveRecord::Migration[5.2]
  class StaticPage < ApplicationRecord
    self.table_name = :decidim_static_pages
  end

  # rubocop:disable Rails/SkipsModelValidations
  def change
    change_table :decidim_static_pages do |t|
      t.column :weight, :integer, default: nil, null: true
      t.column :show_in_footer, :boolean, default: false, null: false
    end

    Decidim::StaticPage.where(
      slug: ["faq", "terms-and-conditions", "terms-of-service", "accessibility"]
    ).update_all(show_in_footer: true)
    # rubocop:enable Rails/SkipsModelValidations
  end
end
