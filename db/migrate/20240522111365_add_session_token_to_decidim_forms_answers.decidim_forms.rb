# frozen_string_literal: true

# This migration comes from decidim_forms (originally 20190315203056)
<<<<<<< HEAD:db/migrate/20240522111365_add_session_token_to_decidim_forms_answers.decidim_forms.rb
# This file has been modified by `decidim upgrade:migrations` task on 2025-05-08 14:27:30 UTC
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160750_add_session_token_to_decidim_forms_answers.decidim_forms.rb
class AddSessionTokenToDecidimFormsAnswers < ActiveRecord::Migration[5.2]
  class Answer < ApplicationRecord
    self.table_name = :decidim_forms_answers
  end

  def change
    add_column :decidim_forms_answers, :session_token, :string, null: false, default: ""
    add_index :decidim_forms_answers, :session_token

    Answer.find_each do |answer|
      answer.session_token = Digest::SHA256.hexdigest("#{answer.decidim_user_id}-#{Rails.application.secret_key_base}")
      answer.save!
    end
  end
end
