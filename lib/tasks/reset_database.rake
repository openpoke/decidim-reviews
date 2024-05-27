# frozen_string_literal: true

namespace :decidim do
  task reset: :environment do
    ENV["DISABLE_DATABASE_ENVIRONMENT_CHECK"]=1
    ENV["SEED"]=1
    Rake::Task["db:truncate_all"].invoke
    Rake::Task["db:seed"].invoke
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
