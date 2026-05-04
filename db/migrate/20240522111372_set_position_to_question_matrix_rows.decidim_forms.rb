# frozen_string_literal: true

# This migration comes from decidim_forms (originally 20210616153042)
<<<<<<< HEAD:db/migrate/20240522111372_set_position_to_question_matrix_rows.decidim_forms.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160757_set_position_to_question_matrix_rows.decidim_forms.rb
class SetPositionToQuestionMatrixRows < ActiveRecord::Migration[5.2]
  def up
    execute "UPDATE decidim_forms_question_matrix_rows SET position = id"
  end

  def down
    execute "UPDATE decidim_forms_question_matrix_rows SET position = NULL"
  end
end
