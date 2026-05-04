# frozen_string_literal: true

# This migration comes from decidim (originally 20160920140207)
<<<<<<< HEAD:db/migrate/20240522111138_devise_invitable_add_to_decidim_users.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160533_devise_invitable_add_to_decidim_users.decidim.rb
class DeviseInvitableAddToDecidimUsers < ActiveRecord::Migration[4.2]
  def up
    change_table :decidim_users do |t|
      t.string :invitation_token
      t.datetime :invitation_created_at
      t.datetime :invitation_sent_at
      t.datetime :invitation_accepted_at
      t.integer :invitation_limit
      t.references :invited_by, polymorphic: true
      t.integer :invitations_count, default: 0
      t.index :invitations_count
      t.index :invitation_token, unique: true # for invitable
      t.index :invited_by_id
    end
  end

  def down
    change_table :decidim_users do |t|
      t.remove_references :invited_by, polymorphic: true
      t.remove :invitations_count, :invitation_limit, :invitation_sent_at, :invitation_accepted_at, :invitation_token, :invitation_created_at
    end
  end
end
