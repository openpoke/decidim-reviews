# frozen_string_literal: true

source "https://rubygems.org"

ruby RUBY_VERSION
DECIDIM_VERSION = { github: "openpoke/decidim", branch: "0.31-backports" }.freeze
gem "decidim", DECIDIM_VERSION
# gem "decidim-conferences", DECIDIM_VERSION
# gem "decidim-consultations", DECIDIM_VERSION
# gem "decidim-elections", DECIDIM_VERSION
# gem "decidim-initiatives", DECIDIM_VERSION
# gem "decidim-templates", DECIDIM_VERSION
gem "decidim-pokecode", github: "openpoke/decidim-module-pokecode", branch: "main"

<<<<<<< HEAD
DECIDIM_VERSION = { github: "openpoke/decidim", branch: "0.31-backports" }

gem "decidim", DECIDIM_VERSION
gem "decidim-conferences", DECIDIM_VERSION
# gem "decidim-decidim_awesome", { github: "decidim-ice/decidim-module-decidim_awesome", branch: "feature/add_new_cookie_policy" }
gem "decidim-design", DECIDIM_VERSION
gem "decidim-initiatives", DECIDIM_VERSION
gem "decidim-templates", DECIDIM_VERSION

gem "bootsnap"
gem "puma"
=======
gem "bootsnap", "~> 1.3"
gem "puma", ">= 6.3.1"
>>>>>>> 2ae0386 (update files)


group :development, :test do
  gem "byebug", "~> 11.0", platform: :mri

<<<<<<< HEAD
  gem "decidim-dev", DECIDIM_VERSION

  gem "brakeman", "~> 6.1"
  gem "parallel_tests", "~> 4.2"
=======
  gem "brakeman"
  gem "decidim-dev", DECIDIM_VERSION
>>>>>>> 2ae0386 (update files)
end

group :development do
  gem "letter_opener_web"
  gem "listen"
  gem "web-console"
end
