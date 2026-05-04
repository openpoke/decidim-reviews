# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20181107175558)
<<<<<<< HEAD:db/migrate/20240522111558_add_questionnaire_to_existing_meetings.decidim_meetings.rb
# This file has been modified by `decidim upgrade:migrations` task on 2025-10-09 08:35:36 UTC
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160928_add_questionnaire_to_existing_meetings.decidim_meetings.rb
class AddQuestionnaireToExistingMeetings < ActiveRecord::Migration[5.2]
  class Meeting < ApplicationRecord
    self.table_name = :decidim_meetings_meetings
    include Decidim::HasComponent
    include Decidim::Forms::HasQuestionnaire
  end

  def change
    Meeting.transaction do
      Meeting.unscoped.find_each do |meeting|
        if meeting.component.present? && meeting.questionnaire.blank?
          meeting.update!(
            questionnaire: Decidim::Forms::Questionnaire.new
          )
        end
      end
    end
  end
end
