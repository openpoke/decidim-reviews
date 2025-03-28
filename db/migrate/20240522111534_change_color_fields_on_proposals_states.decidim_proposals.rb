# frozen_string_literal: true

# This migration comes from decidim_proposals (originally 20240209092404)
# This file has been modified by `decidim upgrade:migrations` task on 2025-03-28 09:30:04 UTC
class ChangeColorFieldsOnProposalsStates < ActiveRecord::Migration[6.1]
  class ProposalState < ApplicationRecord
    self.table_name = :decidim_proposals_proposal_states

    def self.colors
      {
        gray: {
          background: "#F6F8FA",
          foreground: "#4B5058"
        },
        green: {
          background: "#E3FCE9",
          foreground: "#15602C"
        },
        orange: {
          background: "#FFF1E5",
          foreground: "#BC4C00"
        },
        red: {
          background: "#FFEBE9",
          foreground: "#D1242F"
        }
      }
    end
  end

  def up
    colors = ProposalState.colors

    # rubocop:disable Rails/SkipsModelValidations
    ProposalState.where(token: :accepted).update_all(
      bg_color: colors[:green][:background], text_color: colors[:green][:foreground]
    )
    ProposalState.where(token: :evaluating).update_all(
      bg_color: colors[:orange][:background], text_color: colors[:orange][:foreground]
    )
    ProposalState.where(token: :rejected).update_all(
      bg_color: colors[:red][:background], text_color: colors[:red][:foreground]
    )
    # rubocop:enable Rails/SkipsModelValidations
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
