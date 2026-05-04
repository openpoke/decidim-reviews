# frozen_string_literal: true

# This migration comes from decidim_surveys (originally 20170511092231)
<<<<<<< HEAD:db/migrate/20240522111614_create_decidim_surveys.decidim_surveys.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160982_create_decidim_surveys.decidim_surveys.rb
class CreateDecidimSurveys < ActiveRecord::Migration[5.0]
  def change
    create_table :decidim_surveys_surveys do |t|
      t.jsonb :title
      t.jsonb :description
      t.jsonb :tos
      t.references :decidim_feature, index: true
      t.datetime :published_at

      t.timestamps
    end
  end
end
