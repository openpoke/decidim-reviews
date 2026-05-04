# frozen_string_literal: true

# This migration comes from decidim (originally 20170913092351)
<<<<<<< HEAD:db/migrate/20240522111201_add_header_snippets_to_organizations.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160596_add_header_snippets_to_organizations.decidim.rb
class AddHeaderSnippetsToOrganizations < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_organizations, :header_snippets, :text
  end
end
