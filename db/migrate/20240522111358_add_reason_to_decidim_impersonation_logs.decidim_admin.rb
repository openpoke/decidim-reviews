# frozen_string_literal: true

# This migration comes from decidim_admin (originally 20180413233318)
<<<<<<< HEAD:db/migrate/20240522111358_add_reason_to_decidim_impersonation_logs.decidim_admin.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:56 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160743_add_reason_to_decidim_impersonation_logs.decidim_admin.rb
class AddReasonToDecidimImpersonationLogs < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_impersonation_logs, :reason, :text
  end
end
