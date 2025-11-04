# frozen_string_literal: true

module Censuses
  # This class presents data for logging into the system with census data.
  class SillyCensusForm < Decidim::Form
    attribute :code, String
    validate :code_unique

    def voter_uid
      code
    end

    def election
      @election ||= context.election
    end

    private

    def code_unique
      return unless election.votes.where(voter_uid: code&.strip).exists?

      errors.add(:base, "Code is already taken! Please choose another movie!")
    end
  end
end
