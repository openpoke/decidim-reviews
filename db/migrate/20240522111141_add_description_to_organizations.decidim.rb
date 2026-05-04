# frozen_string_literal: true

# This migration comes from decidim (originally 20161005153007)
<<<<<<< HEAD:db/migrate/20240522111141_add_description_to_organizations.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160536_add_description_to_organizations.decidim.rb
class AddDescriptionToOrganizations < ActiveRecord::Migration[5.0]
  def change
    change_table :decidim_organizations do |t|
      t.jsonb :description
    end
  end
end
