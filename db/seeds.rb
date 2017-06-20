# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Author.destroy_all
Authorship.destroy_all
Book.destroy_all

25.times do
  Author.create!(first_name: Faker::Name.first_name,
                 last_name: Faker::Name.last_name,
                 age: rand(15..100))
end

50.times do
  Book.create!(title: Faker::Book.unique.title,
               genre: Faker::Book.genre,
               classification: Classification.all.sample,
               btype: %w[Fiction Nonfiction].sample,
               year: rand(1900..2017))
end

author_ids = Author.pluck(:id)
books = Book.all 

books.each do | book |
  Authorship.create!(book_id: book.id, author_id: author_ids.sample)
end

puts "Created #{Book.count} books"