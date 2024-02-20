# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

10.times do
  users = User.all
  Event.create(start_date: "2024-11-11",
              title: "Event",
              duration: 30,
              description: "Event instance mass creation with random users",
              price: 250,
              location: "Paris #{rand(2..20)}ème",
              admin_id: rand(1..users.length))
end
