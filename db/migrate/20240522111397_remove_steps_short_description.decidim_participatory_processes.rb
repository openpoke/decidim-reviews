# frozen_string_literal: true

# This migration comes from decidim_participatory_processes (originally 20170220110740)
<<<<<<< HEAD:db/migrate/20240522111397_remove_steps_short_description.decidim_participatory_processes.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160778_remove_steps_short_description.decidim_participatory_processes.rb
class RemoveStepsShortDescription < ActiveRecord::Migration[5.0]
  class ParticipatoryProcessStep < ApplicationRecord
    self.table_name = :decidim_participatory_process_steps
  end

  def change
    ParticipatoryProcessStep.transaction do
      ParticipatoryProcessStep.find_each do |step|
        step.update!(
          description: new_description_for(step)
        )
      end

      remove_column :decidim_participatory_process_steps, :short_description
    end
  end

  def new_description_for(step)
    desc = {}
    step.description.keys.each do |locale|
      desc[locale] = step.short_description[locale] + step.description[locale]
    end
    desc
  end
end
