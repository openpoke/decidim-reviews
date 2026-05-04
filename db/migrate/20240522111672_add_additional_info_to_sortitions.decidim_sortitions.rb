# frozen_string_literal: true

# This migration comes from decidim_sortitions (originally 20171220164744)
<<<<<<< HEAD:db/migrate/20240522111672_add_additional_info_to_sortitions.decidim_sortitions.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161040_add_additional_info_to_sortitions.decidim_sortitions.rb
class AddAdditionalInfoToSortitions < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_module_sortitions_sortitions, :additional_info, :jsonb
  end
end
