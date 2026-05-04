# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20210520084247)
<<<<<<< HEAD:db/migrate/20240522111580_create_decidim_meetings_questionnaires.decidim_meetings.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160950_create_decidim_meetings_questionnaires.decidim_meetings.rb
class CreateDecidimMeetingsQuestionnaires < ActiveRecord::Migration[6.0]
  def change
    create_table :decidim_meetings_questionnaires do |t|
      t.references :questionnaire_for, polymorphic: true, index: { name: "index_decidim_meetings_questionnaires_questionnaire_for" }

      t.timestamps
    end
  end
end
