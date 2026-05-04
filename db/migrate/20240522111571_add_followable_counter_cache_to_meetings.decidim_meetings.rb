# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20210310120731)
<<<<<<< HEAD:db/migrate/20240522111571_add_followable_counter_cache_to_meetings.decidim_meetings.rb
# This file has been modified by `decidim upgrade:migrations` task on 2025-10-09 08:35:36 UTC
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160941_add_followable_counter_cache_to_meetings.decidim_meetings.rb
class AddFollowableCounterCacheToMeetings < ActiveRecord::Migration[5.2]
  class Meeting < ApplicationRecord
    self.table_name = :decidim_meetings_meetings
    include Decidim::HasComponent
    include Decidim::Followable
  end

  def change
    add_column :decidim_meetings_meetings, :follows_count, :integer, null: false, default: 0, index: true

    reversible do |dir|
      dir.up do
        Meeting.reset_column_information
        Meeting.unscoped.find_each do |record|
          record.class.reset_counters(record.id, :follows)
        end
      end
    end
  end
end
