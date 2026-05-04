# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20180926082635)
<<<<<<< HEAD:db/migrate/20240522111411_add_cta_url_and_text_to_steps.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160792_add_cta_url_and_text_to_steps.decidim_participatory_processes.rb
class AddCtaUrlAndTextToSteps < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_participatory_process_steps, :cta_text, :jsonb, default: {}
    add_column :decidim_participatory_process_steps, :cta_path, :string
  end
end
