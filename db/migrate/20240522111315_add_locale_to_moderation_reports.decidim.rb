# frozen_string_literal: true

# This migration comes from decidim (originally 20201019074554)
<<<<<<< HEAD:db/migrate/20240522111315_add_locale_to_moderation_reports.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160710_add_locale_to_moderation_reports.decidim.rb
class AddLocaleToModerationReports < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_reports, :locale, :string
  end
end
