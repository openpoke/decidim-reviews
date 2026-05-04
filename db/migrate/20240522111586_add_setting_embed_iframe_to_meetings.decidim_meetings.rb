# frozen_string_literal: true

# This migration comes from decidim_meetings (originally 20210602040614)
<<<<<<< HEAD:db/migrate/20240522111586_add_setting_embed_iframe_to_meetings.decidim_meetings.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160956_add_setting_embed_iframe_to_meetings.decidim_meetings.rb
class AddSettingEmbedIframeToMeetings < ActiveRecord::Migration[6.0]
  def change
    add_column :decidim_meetings_meetings, :show_embedded_iframe, :boolean, default: false
  end
end
