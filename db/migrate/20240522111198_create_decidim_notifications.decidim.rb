# frozen_string_literal: true

# This migration comes from decidim (originally 20170808071019)
<<<<<<< HEAD:db/migrate/20240522111198_create_decidim_notifications.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160593_create_decidim_notifications.decidim.rb
class CreateDecidimNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :decidim_notifications do |t|
      t.references :decidim_user, null: false
      t.references :decidim_resource, polymorphic: true, index: false, null: false
      t.string :event_name, null: false
      t.string :event_class, null: false
      t.timestamps
    end
  end
end
