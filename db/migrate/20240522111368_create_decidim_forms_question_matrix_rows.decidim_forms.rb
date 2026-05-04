# frozen_string_literal: true

# This migration comes from decidim_forms (originally 20200225123810)
<<<<<<< HEAD:db/migrate/20240522111368_create_decidim_forms_question_matrix_rows.decidim_forms.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160753_create_decidim_forms_question_matrix_rows.decidim_forms.rb
class CreateDecidimFormsQuestionMatrixRows < ActiveRecord::Migration[5.2]
  def change
    create_table :decidim_forms_question_matrix_rows do |t|
      t.references :decidim_question, index: { name: "index_decidim_forms_question_matrix_questionnaire_id" }
      t.integer :position, index: true
      t.jsonb :body
    end
  end
end
