# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'destroying old articles...'
Article.destroy_all

puts 'creating 10 articles...'
10.times do
  article = Article.create(
    title: Faker::Sports::Basketball.team,
    content: Faker::Sports::Basketball.player
  )
  puts "#{article.title} has been created."
end
puts 'Done!'
