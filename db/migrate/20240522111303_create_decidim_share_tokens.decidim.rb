# frozen_string_literal: true

# This migration comes from decidim (originally 20200702073419)
<<<<<<< HEAD:db/migrate/20240522111303_create_decidim_share_tokens.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160698_create_decidim_share_tokens.decidim.rb
class CreateDecidimShareTokens < ActiveRecord::Migration[5.2]
  def change
    create_table :decidim_share_tokens do |t|
      t.references :decidim_organization, null: false, index: true
      t.references :decidim_user, null: false, index: true
      t.references :token_for, polymorphic: true, null: false, index: { name: "decidim_share_tokens_token_for" }
      t.string :token, null: false
      t.integer :times_used, default: 0
      t.datetime :created_at
      t.datetime :last_used_at
      t.datetime :expires_at
    end
  end
end
