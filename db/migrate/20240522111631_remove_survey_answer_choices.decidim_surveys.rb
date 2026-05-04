# frozen_string_literal: true

# This migration comes from decidim_surveys (originally 20200610090533)
<<<<<<< HEAD:db/migrate/20240522111631_remove_survey_answer_choices.decidim_surveys.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160999_remove_survey_answer_choices.decidim_surveys.rb
class RemoveSurveyAnswerChoices < ActiveRecord::Migration[5.2]
  def change
    drop_table :decidim_surveys_survey_answer_choices, if_exists: true
  end
end
