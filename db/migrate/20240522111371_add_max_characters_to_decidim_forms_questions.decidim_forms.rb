# frozen_string_literal: true

# This migration comes from decidim_forms (originally 20210208094442)
<<<<<<< HEAD:db/migrate/20240522111371_add_max_characters_to_decidim_forms_questions.decidim_forms.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160756_add_max_characters_to_decidim_forms_questions.decidim_forms.rb
class AddMaxCharactersToDecidimFormsQuestions < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_forms_questions, :max_characters, :integer, default: 0
  end
end
