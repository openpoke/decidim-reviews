# frozen_string_literal: true

source "https://rubygems.org"

ruby RUBY_VERSION


DECIDIM_VERSION = { github: "decidim/decidim", branch: "release/0.29-stable" }.freeze
gem "decidim", DECIDIM_VERSION
gem 'decidim-reporting_proposals', git: "https://github.com/openpoke/decidim-module-reporting_proposals"

gem "bootsnap", "~> 1.3"

gem "puma", ">= 6.3.1"

gem "health_check"
gem "wicked_pdf", "~> 2.1"
gem "sidekiq"

gem "letter_opener_web", "~> 2.0"

group :development, :test do
  gem "byebug", "~> 11.0", platform: :mri

  gem "brakeman", "~> 6.1"
  gem "decidim-dev", "0.29.7"
  gem "net-imap", "~> 0.2.3"
  gem "net-pop", "~> 0.1.1"
  gem "net-smtp", "~> 0.3.1"
end

group :development do
  gem "listen", "~> 3.1"
  gem "web-console", "~> 4.2"
end

group :production do
  gem "aws-sdk-s3", require: false
end
