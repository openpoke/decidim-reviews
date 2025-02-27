# frozen_string_literal: true

source "https://rubygems.org"

ruby RUBY_VERSION

DECIDIM_VERSION = { github: "openpoke/decidim", branch: "feature/waitlist-for-full-meetings" }

gem "decidim", DECIDIM_VERSION
gem "decidim-conferences", DECIDIM_VERSION
gem "decidim-design", DECIDIM_VERSION
gem "decidim-initiatives", DECIDIM_VERSION
gem "decidim-templates", DECIDIM_VERSION

gem "bootsnap", "~> 1.4"

gem "faker", "~> 3.2"
gem "letter_opener_web", "~> 2.0"
gem "puma", ">= 6.3.1"

group :development, :test do
  gem "byebug", "~> 11.0", platform: :mri

  gem "decidim-dev", DECIDIM_VERSION

  gem "brakeman", "~> 6.1"
  gem "parallel_tests", "~> 4.2"
end

group :development do
  gem "listen"
  gem "web-console"
end

group :production do
  gem "aws-sdk-s3", "~> 1.143.0", require: false
  gem "sidekiq"
  gem "sidekiq-cron"
end

group :development do
  # Profiling gems
  gem "bullet"
  gem "flamegraph"
  gem "memory_profiler"
  gem "rack-mini-profiler", require: false
  gem "stackprof"
end
