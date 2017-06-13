# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Book.destroy_all

50.times do
  Book.create!(title: Faker::Book.unique.title,
               author: Faker::Book.unique.author,
               genre: Faker::Book.genre,
               classification: Classifications['classifications'].to_a.sample,
               btype: %w[Fiction Nonfiction].sample,
               year: rand(1900..2017))
end

puts "Created #{Book.count} books"