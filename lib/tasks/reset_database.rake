# frozen_string_literal: true

namespace :decidim do
  task reset: :environment do
    Rake::Task["db:seed:replant"].invoke
    organization = Decidim::Organization.first
    organization.update_column(:content_security_policy, {
      "img-src"=>"https://eu2.contabostorage.com",
      "font-src"=>"data:",
      "frame-src"=>"",
      "media-src"=>"",
      "style-src"=>"",
      "script-src"=>"",
      "connect-src"=>"https://eu2.contabostorage.com",
      "default-src"=>""
    })
  end
end
