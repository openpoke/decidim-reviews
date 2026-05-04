# frozen_string_literal: true

# This migration comes from decidim (originally 20220215172439)
<<<<<<< HEAD:db/migrate/20240522111339_add_digest_sent_at_to_users.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160734_add_digest_sent_at_to_users.decidim.rb
class AddDigestSentAtToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :decidim_users, :digest_sent_at, :datetime
  end
end
