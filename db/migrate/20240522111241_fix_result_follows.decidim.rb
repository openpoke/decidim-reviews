# frozen_string_literal: true

# This migration comes from decidim (originally 20180706111847)
<<<<<<< HEAD:db/migrate/20240522111241_fix_result_follows.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160636_fix_result_follows.decidim.rb
class FixResultFollows < ActiveRecord::Migration[5.2]
  def change
    # rubocop:disable Rails/SkipsModelValidations
    Decidim::Follow.where(decidim_followable_type: "Decidim::Results::Result").update_all(decidim_followable_type: "Decidim::Accountability::Result")
    # rubocop:enable Rails/SkipsModelValidations
  end
end
