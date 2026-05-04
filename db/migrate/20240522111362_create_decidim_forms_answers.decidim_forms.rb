# frozen_string_literal: true

# This migration comes from decidim_forms (originally 20170515144119)
<<<<<<< HEAD:db/migrate/20240522111362_create_decidim_forms_answers.decidim_forms.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160747_create_decidim_forms_answers.decidim_forms.rb
class CreateDecidimFormsAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :decidim_forms_answers do |t|
      t.text :body
      t.references :decidim_user, index: true
      t.references :decidim_questionnaire, index: true
      t.references :decidim_question, index: { name: "index_decidim_forms_answers_question_id" }

      t.timestamps
    end
  end
end
