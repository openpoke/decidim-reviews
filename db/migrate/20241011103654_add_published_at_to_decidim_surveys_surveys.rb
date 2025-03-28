# frozen_string_literal: true

# This migration comes from decidim_surveys (originally 20240925124312)
class AddPublishedAtToDecidimSurveysSurveys < ActiveRecord::Migration[7.0]
  def change
    # add_column :decidim_surveys_surveys, :published_at, :datetime
    # add_index :decidim_surveys_surveys, :published_at
  end
end
