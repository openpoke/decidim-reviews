# frozen_string_literal: true

# This migration comes from decidim_forms (originally 20201110152921)
<<<<<<< HEAD:db/migrate/20240522111370_add_salt_to_decidim_forms_questionnaires.decidim_forms.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160755_add_salt_to_decidim_forms_questionnaires.decidim_forms.rb
class AddSaltToDecidimFormsQuestionnaires < ActiveRecord::Migration[5.2]
  class Questionnaire < ApplicationRecord
    self.table_name = :decidim_forms_questionnaires
  end

  def change
    add_column :decidim_forms_questionnaires, :salt, :string

    Questionnaire.find_each do |questionnaire|
      questionnaire.salt = Decidim::Tokenizer.random_salt
      questionnaire.save!
    end
  end
end
