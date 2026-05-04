# frozen_string_literal: true

# This migration comes from decidim (originally 20180206143340)
<<<<<<< HEAD:db/migrate/20240522111221_fix_reference_for_all_resources.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160616_fix_reference_for_all_resources.decidim.rb
class FixReferenceForAllResources < ActiveRecord::Migration[5.1]
  def up
    models = ActiveRecord::Base.descendants.select { |c| c.included_modules.include?(Decidim::HasReference) }

    models.each do |model|
      next unless model.table_exists?

      model.find_each(&:touch)
    end
  end

  def down; end
end
