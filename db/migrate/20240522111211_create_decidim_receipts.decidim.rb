# frozen_string_literal: true

# This migration comes from decidim (originally 20171117100533)
<<<<<<< HEAD:db/migrate/20240522111211_create_decidim_receipts.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160606_create_decidim_receipts.decidim.rb
class CreateDecidimReceipts < ActiveRecord::Migration[5.1]
  def change
    create_table :decidim_messaging_receipts do |t|
      t.references :decidim_message, null: false
      t.references :decidim_recipient, null: false
      t.datetime :read_at

      t.timestamps
    end
  end
end
