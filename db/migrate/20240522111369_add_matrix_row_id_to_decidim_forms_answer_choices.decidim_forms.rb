# frozen_string_literal: true

# This migration comes from decidim_forms (originally 20200304152939)
<<<<<<< HEAD:db/migrate/20240522111369_add_matrix_row_id_to_decidim_forms_answer_choices.decidim_forms.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160754_add_matrix_row_id_to_decidim_forms_answer_choices.decidim_forms.rb
class AddMatrixRowIdToDecidimFormsAnswerChoices < ActiveRecord::Migration[5.2]
  class AnswerChoice < ApplicationRecord
    self.table_name = :decidim_forms_answer_choices
  end

  def change
    add_column :decidim_forms_answer_choices, :decidim_question_matrix_row_id, :integer
  end
end
