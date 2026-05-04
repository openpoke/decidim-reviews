# frozen_string_literal: true

# This migration comes from decidim_forms (originally 20180405015012)
<<<<<<< HEAD:db/migrate/20240522111363_create_decidim_forms_answer_options.decidim_forms.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160748_create_decidim_forms_answer_options.decidim_forms.rb
class CreateDecidimFormsAnswerOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :decidim_forms_answer_options do |t|
      t.references :decidim_question, index: { name: "index_decidim_forms_answer_options_question_id" }
      t.jsonb :body
      t.boolean :free_text
    end
  end
end
