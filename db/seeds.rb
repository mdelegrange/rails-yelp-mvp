# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all

5.times do
  restaurant = Restaurant.new(
    name:         Faker::LordOfTheRings.location ,
    address:      Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category:     %w[chinese italian japanese french belgian].sample
  )
  restaurant.save!
end


20.times do
  review = Review.new(
    content: Faker::Hipster.paragraph,
    rating: [0, 1, 2, 3, 4, 5].sample,
    restaurant_id: Restaurant.ids.sample
    )
  review.save!

end
