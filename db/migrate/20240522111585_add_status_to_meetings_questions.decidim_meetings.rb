# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20210520134834)
<<<<<<< HEAD:db/migrate/20240522111585_add_status_to_meetings_questions.decidim_meetings.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160955_add_status_to_meetings_questions.decidim_meetings.rb
class AddStatusToMeetingsQuestions < ActiveRecord::Migration[6.0]
  def change
    add_column :decidim_meetings_questions, :status, :integer, default: 0, index: true
  end
end
