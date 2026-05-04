# frozen_string_literal: true

# This migration comes from decidim_forms (originally 20190930094710)
<<<<<<< HEAD:db/migrate/20240522111366_add_ip_hash_to_decidim_form_answers.decidim_forms.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160751_add_ip_hash_to_decidim_form_answers.decidim_forms.rb
class AddIpHashToDecidimFormAnswers < ActiveRecord::Migration[5.2]
  class Answer < ApplicationRecord
    self.table_name = :decidim_forms_answers
  end

  def change
    add_column :decidim_forms_answers, :ip_hash, :string
    add_index :decidim_forms_answers, :ip_hash
  end
end
