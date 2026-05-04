# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20170116135237)
<<<<<<< HEAD:db/migrate/20240522111392_loosen_step_requirements.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160773_loosen_step_requirements.decidim_participatory_processes.rb
class LoosenStepRequirements < ActiveRecord::Migration[5.0]
  def change
    change_column_null(:decidim_participatory_process_steps, :short_description, true)
    change_column_null(:decidim_participatory_process_steps, :description, true)
  end
end
