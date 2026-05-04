# frozen_string_literal: true

# This migration comes from decidim_surveys (originally 20170518085302)
<<<<<<< HEAD:db/migrate/20240522111617_add_position_to_surveys_questions.decidim_surveys.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160985_add_position_to_surveys_questions.decidim_surveys.rb
class AddPositionToSurveysQuestions < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_surveys_survey_questions, :position, :integer, index: true
  end
end
