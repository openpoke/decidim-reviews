# frozen_string_literal: true

# This migration comes from decidim (originally 20190618075906)
<<<<<<< HEAD:db/migrate/20240522111278_add_confidential_to_doorkeeper_application.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160673_add_confidential_to_doorkeeper_application.decidim.rb
class AddConfidentialToDoorkeeperApplication < ActiveRecord::Migration[5.2]
  def change
    add_column(
      :oauth_applications,
      :confidential,
      :boolean,
      null: false,
      default: true # maintaining backwards compatibility: require secrets
    )
  end
end
