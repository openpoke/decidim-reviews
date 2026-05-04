# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20170215131720)
<<<<<<< HEAD:db/migrate/20240522111480_add_report_count_to_proposals.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160859_add_report_count_to_proposals.decidim_proposals.rb
class AddReportCountToProposals < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_proposals_proposals, :report_count, :integer, default: 0
  end
end
