# frozen_string_literal: true

# This migration comes from decidim (originally 20211208155453)
class CreateDecidimReminders < ActiveRecord::Migration[6.0]
  def change
    create_table :decidim_reminders do |t|
      t.belongs_to :decidim_user, index: true, foreign_key: true, null: false
      t.belongs_to :decidim_component, index: true, foreign_key: true
      t.timestamps
    end
  end
end
