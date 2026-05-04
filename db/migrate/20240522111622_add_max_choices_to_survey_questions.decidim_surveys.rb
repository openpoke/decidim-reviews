# frozen_string_literal: true

# This migration comes from decidim_surveys (originally 20180314225829)
<<<<<<< HEAD:db/migrate/20240522111622_add_max_choices_to_survey_questions.decidim_surveys.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160990_add_max_choices_to_survey_questions.decidim_surveys.rb
class AddMaxChoicesToSurveyQuestions < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_surveys_survey_questions, :max_choices, :integer
  end
end
