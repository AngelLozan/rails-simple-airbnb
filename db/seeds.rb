require "faker"

puts "Cleaning database..."
Flat.destroy_all

puts "Creating some flats..."
flats = []
flats << { name: Faker::FunnyName.name, address: Faker::Address.street_address, description: Faker::Lorem.paragraph(sentence_count: 2), price_per_night: Faker::Commerce.price(range: 50..100.0, as_string: true), number_of_guests: rand(1..10) }
flats << { name: Faker::FunnyName.name, address: Faker::Address.street_address, description: Faker::Lorem.paragraph(sentence_count: 2), price_per_night: Faker::Commerce.price(range: 50..100.0, as_string: true), number_of_guests: rand(1..10) }
flats << { name: Faker::FunnyName.name, address: Faker::Address.street_address, description: Faker::Lorem.paragraph(sentence_count: 2), price_per_night: Faker::Commerce.price(range: 50..100.0, as_string: true), number_of_guests: rand(1..10) }
flats << { name: Faker::FunnyName.name, address: Faker::Address.street_address, description: Faker::Lorem.paragraph(sentence_count: 2), price_per_night: Faker::Commerce.price(range: 50..100.0, as_string: true), number_of_guests: rand(1..10) }
flats << { name: Faker::FunnyName.name, address: Faker::Address.street_address, description: Faker::Lorem.paragraph(sentence_count: 2), price_per_night: Faker::Commerce.price(range: 50..100.0, as_string: true), number_of_guests: rand(1..10) }
flats << { name: Faker::FunnyName.name, address: Faker::Address.street_address, description: Faker::Lorem.paragraph(sentence_count: 2), price_per_night: Faker::Commerce.price(range: 50..100.0, as_string: true), number_of_guests: rand(1..10) }
flats << { name: Faker::FunnyName.name, address: Faker::Address.street_address, description: Faker::Lorem.paragraph(sentence_count: 2), price_per_night: Faker::Commerce.price(range: 50..100.0, as_string: true), number_of_guests: rand(1..10) }

flats.each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts "Finished!"
