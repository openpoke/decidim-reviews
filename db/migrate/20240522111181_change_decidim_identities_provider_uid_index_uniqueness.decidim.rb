# frozen_string_literal: true

# This migration comes from decidim (originally 20170405094258)
<<<<<<< HEAD:db/migrate/20240522111181_change_decidim_identities_provider_uid_index_uniqueness.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160576_change_decidim_identities_provider_uid_index_uniqueness.decidim.rb
class ChangeDecidimIdentitiesProviderUidIndexUniqueness < ActiveRecord::Migration[5.0]
  def change
    remove_index :decidim_identities, [:provider, :uid]
    add_index :decidim_identities, [:provider, :uid, :decidim_organization_id], unique: true,
                                                                                name: "decidim_identities_provider_uid_organization_unique"

    Decidim::Identity.includes(:user).find_each do |identity|
      identity.organization = identity.user.organization
      identity.save!
    end
  end
end
