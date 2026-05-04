# frozen_string_literal: true

# This migration comes from decidim_forms (originally 20170515090916)
<<<<<<< HEAD:db/migrate/20240522111361_create_decidim_forms_questions.decidim_forms.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160746_create_decidim_forms_questions.decidim_forms.rb
class CreateDecidimFormsQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :decidim_forms_questions do |t|
      t.references :decidim_questionnaire, index: true
      t.integer :position, index: true
      t.string :question_type
      t.boolean :mandatory
      t.jsonb :body
      t.jsonb :description
      t.integer :max_choices

      t.timestamps
    end
  end
end
