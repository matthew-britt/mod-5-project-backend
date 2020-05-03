# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'database_cleaner'

DatabaseCleaner.clean_with(:truncation)

20.times do 
    User.create(name: Faker::Name.name, password: 'asdf')
end

20.times do 
    post = Post.new
    post.header = Faker::Creature::Animal.name 
    post.story = Faker::Quote.famous_last_words
    post.user = User.all.sample
    post.save
end

25.times do
    like = Like.new
    like.user = User.all.sample
    like.post = Post.all.sample
    like.save
end