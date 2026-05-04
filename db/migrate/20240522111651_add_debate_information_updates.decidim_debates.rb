# frozen_string_literal: true

# This migration comes from decidim_debates (originally 20180117100413)
<<<<<<< HEAD:db/migrate/20240522111651_add_debate_information_updates.decidim_debates.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208161019_add_debate_information_updates.decidim_debates.rb
class AddDebateInformationUpdates < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_debates_debates, :information_updates, :jsonb
  end
end
