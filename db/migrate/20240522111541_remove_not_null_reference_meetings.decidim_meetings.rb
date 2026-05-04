# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20170410074252)
<<<<<<< HEAD:db/migrate/20240522111541_remove_not_null_reference_meetings.decidim_meetings.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160911_remove_not_null_reference_meetings.decidim_meetings.rb
class RemoveNotNullReferenceMeetings < ActiveRecord::Migration[5.0]
  def change
    change_column_null :decidim_meetings_meetings, :reference, true
  end
end
