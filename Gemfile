# frozen_string_literal: true

source "https://rubygems.org"

ruby RUBY_VERSION

DECIDIM_VERSION = { github: "openpoke/decidim", branch: "0.31-backports" }

gem "decidim", DECIDIM_VERSION
gem "decidim-conferences", DECIDIM_VERSION
# gem "decidim-decidim_awesome", { github: "decidim-ice/decidim-module-decidim_awesome", branch: "feature/add_new_cookie_policy" }
gem "decidim-design", DECIDIM_VERSION
gem "decidim-initiatives", DECIDIM_VERSION
gem "decidim-templates", DECIDIM_VERSION

gem "bootsnap"
gem "puma"


group :development, :test do
  gem "byebug", "~> 11.0", platform: :mri

  gem "decidim-dev", DECIDIM_VERSION

  gem "brakeman", "~> 6.1"
  gem "parallel_tests", "~> 4.2"
end

group :development do
  gem "letter_opener_web"
  gem "listen"
  gem "web-console"
end
