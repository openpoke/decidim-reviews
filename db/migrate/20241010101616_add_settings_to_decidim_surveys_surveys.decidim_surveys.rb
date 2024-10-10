# frozen_string_literal: true

# This migration comes from decidim_surveys (originally 20240925124312)
class AddSettingsToDecidimSurveysSurveys < ActiveRecord::Migration[7.0]
  def change
    add_column :decidim_surveys_surveys, :starts_at, :datetime
    add_column :decidim_surveys_surveys, :ends_at, :datetime
    add_column :decidim_surveys_surveys, :announcement, :jsonb
    add_column :decidim_surveys_surveys, :allow_answers, :boolean
    add_column :decidim_surveys_surveys, :allow_unregistered, :boolean
    add_column :decidim_surveys_surveys, :clean_after_publish, :boolean
  end
end
