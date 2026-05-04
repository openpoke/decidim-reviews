# frozen_string_literal: true

# This migration comes from decidim_surveys (originally 20170515090916)
<<<<<<< HEAD:db/migrate/20240522111615_create_decidim_survey_questions.decidim_surveys.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160983_create_decidim_survey_questions.decidim_surveys.rb
class CreateDecidimSurveyQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :decidim_surveys_survey_questions do |t|
      t.jsonb :body
      t.references :decidim_survey, index: true

      t.timestamps
    end
  end
end
