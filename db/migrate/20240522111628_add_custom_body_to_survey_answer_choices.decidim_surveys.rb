# frozen_string_literal: true

# This migration comes from decidim_surveys (originally 20180405015314)
<<<<<<< HEAD:db/migrate/20240522111628_add_custom_body_to_survey_answer_choices.decidim_surveys.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160996_add_custom_body_to_survey_answer_choices.decidim_surveys.rb
class AddCustomBodyToSurveyAnswerChoices < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_surveys_survey_answer_choices, :custom_body, :text
  end
end
