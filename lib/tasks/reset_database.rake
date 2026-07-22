# frozen_string_literal: true

namespace :decidim do
  task reset: :environment do
    ENV["DISABLE_DATABASE_ENVIRONMENT_CHECK"] = "1"
    ENV["SEED"] = "1"
    Rake::Task["db:truncate_all"].invoke
    Rake::Task["db:seed"].invoke
    organization = Decidim::Organization.first
    organization.update_column(:content_security_policy, {
                                 "img-src" => "self,https://eu2.contabostorage.com",
                                 "font-src" => "data:",
                                 "frame-src" => "",
                                 "media-src" => "self,https://eu2.contabostorage.com",
                                 "style-src" => "",
                                 "script-src" => "self,https://eu2.contabostorage.com",
                                 "connect-src" => "self,https://eu2.contabostorage.com",
                                 "default-src" => "self,https://eu2.contabostorage.com"
                               })
  end
end
