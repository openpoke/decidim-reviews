# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# You can remove the 'faker' gem if you do not want Decidim seeds.
# Decidim.seed!

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