# frozen_string_literal: true

# This migration comes from decidim (originally 20190325145349)
<<<<<<< HEAD:db/migrate/20240522111274_add_extended_data_to_newsletters.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160669_add_extended_data_to_newsletters.decidim.rb
class AddExtendedDataToNewsletters < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_newsletters, :extended_data, :jsonb, default: {}
  end
end
