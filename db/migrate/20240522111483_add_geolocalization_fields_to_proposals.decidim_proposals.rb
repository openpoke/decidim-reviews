# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20170228105156)
<<<<<<< HEAD:db/migrate/20240522111483_add_geolocalization_fields_to_proposals.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160862_add_geolocalization_fields_to_proposals.decidim_proposals.rb
class AddGeolocalizationFieldsToProposals < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_proposals_proposals, :address, :text
    add_column :decidim_proposals_proposals, :latitude, :float
    add_column :decidim_proposals_proposals, :longitude, :float
  end
end
