# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20180407110934)
<<<<<<< HEAD:db/migrate/20240522111550_add_services_to_meetings.decidim_meetings.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160920_add_services_to_meetings.decidim_meetings.rb
class AddServicesToMeetings < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_meetings_meetings, :services, :jsonb, default: []
  end
end
