# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20180326082611)
<<<<<<< HEAD:db/migrate/20240522111546_add_fields_for_registrations.decidim_meetings.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160916_add_fields_for_registrations.decidim_meetings.rb
class AddFieldsForRegistrations < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_meetings_meetings, :reserved_slots, :integer, null: false, default: 0
  end
end
