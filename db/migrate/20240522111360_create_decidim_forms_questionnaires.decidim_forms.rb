# frozen_string_literal: true

# This migration comes from decidim_forms (originally 20170511092231)
<<<<<<< HEAD:db/migrate/20240522111360_create_decidim_forms_questionnaires.decidim_forms.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160745_create_decidim_forms_questionnaires.decidim_forms.rb
class CreateDecidimFormsQuestionnaires < ActiveRecord::Migration[5.0]
  def change
    create_table :decidim_forms_questionnaires do |t|
      t.jsonb :title
      t.jsonb :description
      t.jsonb :tos
      t.references :questionnaire_for, polymorphic: true, index: { name: "index_decidim_forms_questionnaires_questionnaire_for" }
      t.datetime :published_at

      t.timestamps
    end
  end
end
