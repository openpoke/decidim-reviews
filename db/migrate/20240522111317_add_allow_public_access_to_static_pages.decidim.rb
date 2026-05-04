# frozen_string_literal: true

# This migration comes from decidim (originally 20201128130723)
<<<<<<< HEAD:db/migrate/20240522111317_add_allow_public_access_to_static_pages.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160712_add_allow_public_access_to_static_pages.decidim.rb
class AddAllowPublicAccessToStaticPages < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_static_pages, :allow_public_access, :boolean, null: false, default: false

    reversible do |direction|
      direction.up do
        # rubocop:disable Rails/SkipsModelValidations
        Decidim::StaticPage.where(slug: ["terms-and-conditions", "terms-of-service"]).update_all(
          allow_public_access: true
        )
        # rubocop:enable Rails/SkipsModelValidations
      end
    end
  end
end
