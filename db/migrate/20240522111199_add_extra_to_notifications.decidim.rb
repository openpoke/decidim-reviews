# frozen_string_literal: true

# This migration comes from decidim (originally 20170906091718)
<<<<<<< HEAD:db/migrate/20240522111199_add_extra_to_notifications.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160594_add_extra_to_notifications.decidim.rb
class AddExtraToNotifications < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_notifications, :extra, :jsonb
  end
end
