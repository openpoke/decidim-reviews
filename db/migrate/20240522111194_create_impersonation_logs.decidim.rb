# frozen_string_literal: true

# This migration comes from decidim (originally 20170724130558)
<<<<<<< HEAD:db/migrate/20240522111194_create_impersonation_logs.decidim.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160589_create_impersonation_logs.decidim.rb
class CreateImpersonationLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :decidim_impersonation_logs do |t|
      t.references :decidim_admin, index: true
      t.references :decidim_user, index: true
      t.datetime :started_at
      t.datetime :ended_at
      t.datetime :expired_at

      t.timestamps
    end
  end
end
