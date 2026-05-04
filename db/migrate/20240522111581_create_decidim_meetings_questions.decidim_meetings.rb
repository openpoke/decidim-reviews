# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20210520084253)
<<<<<<< HEAD:db/migrate/20240522111581_create_decidim_meetings_questions.decidim_meetings.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160951_create_decidim_meetings_questions.decidim_meetings.rb
class CreateDecidimMeetingsQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :decidim_meetings_questions do |t|
      t.references :decidim_questionnaire, index: true
      t.integer :position, index: true
      t.string :question_type
      t.jsonb :body
      t.integer :max_choices

      t.timestamps
    end
  end
end
