# frozen_string_literal: true

Decidim::Elections.census_registry.register(:token_csv) do |manifest|
  manifest.user_query do |election|
    Decidim::Elections::Voter.where(election: election)
  end

  manifest.user_presenter = "Decidim::Elections::Censuses::UserPresenter"
  manifest.admin_form = "Decidim::Elections::Admin::Censuses::TokenCsvForm"
  manifest.admin_form_partial = "decidim/elections/admin/censuses/token_csv_form"
  manifest.after_update_command = "Decidim::Elections::Admin::Censuses::TokenCsv"
end
