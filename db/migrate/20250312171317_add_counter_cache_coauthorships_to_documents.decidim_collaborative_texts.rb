# frozen_string_literal: true

# This migration comes from decidim_collaborative_texts (originally 20250312140133)
class AddCounterCacheCoauthorshipsToDocuments < ActiveRecord::Migration[7.0]
  def change
    add_column :decidim_collaborative_texts_documents, :coauthorships_count, :integer, null: false, default: 0
    add_index :decidim_collaborative_texts_documents, :coauthorships_count, name: "idx_decidim_collaborative_texts_documents_coauthorships_count"
  end
end
