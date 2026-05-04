# frozen_string_literal: true

# This migration comes from decidim (originally 20181119140636)
<<<<<<< HEAD:db/migrate/20240522111265_add_columns_to_static_page_topic.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160660_add_columns_to_static_page_topic.decidim.rb
class AddColumnsToStaticPageTopic < ActiveRecord::Migration[5.2]
  def change
    change_table :decidim_static_page_topics do |t|
      t.column :weight, :integer, default: nil, null: true
      t.column :show_in_footer, :boolean, default: false, null: false
    end
  end
end
