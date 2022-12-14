# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning Restaurants"
Restaurant.destroy_all

20.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  puts "Restaurant with id: #{restaurant.id} and #{restaurant.name} has been created."

  5.times do
    review = Review.create(
      content: Faker::Lorem.paragraph,
      rating: (1..5).to_a.sample
    )
    puts "#{review.content} and #{review.rating}"
  end
end
