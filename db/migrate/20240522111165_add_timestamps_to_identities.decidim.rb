# frozen_string_literal: true

# This migration comes from decidim (originally 20170128140553)
<<<<<<< HEAD:db/migrate/20240522111165_add_timestamps_to_identities.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160560_add_timestamps_to_identities.decidim.rb
class AddTimestampsToIdentities < ActiveRecord::Migration[5.0]
  def change
    add_timestamps :decidim_identities
  end
end
