# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20181016132225)
<<<<<<< HEAD:db/migrate/20240522111507_add_organization_as_author.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160886_add_organization_as_author.decidim_proposals.rb
class AddOrganizationAsAuthor < ActiveRecord::Migration[5.2]
  def change
    official_proposals = Decidim::Proposals::Proposal.unscoped.find_each.select do |proposal|
      proposal.coauthorships.count.zero?
    end

    official_proposals.each do |proposal|
      proposal.add_coauthor(proposal.organization)
    end
  end
end
