# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20200730131631)
<<<<<<< HEAD:db/migrate/20240522111520_move_proposal_endorsed_event_notifications_to_resource_endorsed_event.decidim_proposals.rb
=======
# This file has been modified by `decidim upgrade:migrations` task on 2026-05-04 13:34:57 UTC
>>>>>>> 2ae0386 (update files):db/migrate/20230208160899_move_proposal_endorsed_event_notifications_to_resource_endorsed_event.decidim_proposals.rb
class MoveProposalEndorsedEventNotificationsToResourceEndorsedEvent < ActiveRecord::Migration[5.2]
  def up
    Decidim::Notification.where(event_name: "decidim.events.proposals.proposal_endorsed", event_class: "Decidim::Proposals::ProposalEndorsedEvent").find_each do |notification|
      notification.update(event_name: "decidim.events.resource_endorsed", event_class: "Decidim::ResourceEndorsedEvent")
    end
  end

  def down
    Decidim::Notification.where(
      event_name: "decidim.events.resource_endorsed",
      event_class: "Decidim::ResourceEndorsedEvent",
      decidim_resource_type: "Decidim::Proposals::Proposal"
    )
                         .find_each do |notification|
      notification.update(event_name: "decidim.events.proposals.proposal_endorsed", event_class: "Decidim::Proposals::ProposalEndorsedEvent")
    end
  end
end
