# frozen_string_literal: true

# This migration comes from decidim_surveys (originally 20170524122229)
<<<<<<< HEAD:db/migrate/20240522111619_add_question_type_to_surveys_questions.decidim_surveys.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160987_add_question_type_to_surveys_questions.decidim_surveys.rb
class AddQuestionTypeToSurveysQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_surveys_survey_questions, :question_type, :string
  end
end
