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

# User.create(name: "Falon Dusk", password: "asdf")

Post.create(header: "Elon Musk saves the world", story: "The year is 2020. Michael has long since retired. Jim and Pam are in Austin. Dwight is Regional Manager and running a very tight ship. Life is good...and suddenly, a deadly virus arises in the Far East, igniting a worldwide pandemic. Millions die. Economies are ruined. The world needs a hero. The only man brave enough to fight this virus and destroy socialism is...Elon Musk.", username: "Falon Dusk", user_id: 1)
Post.create(header: "Back to work!", story: "The whole office is sick. Michael orders all the cry babies back to work. Paper is an essential business, after all. 'Put on a damn mask and quit whining!', says Dwight. 'We've needed this plague for a long time.", username: "Gov. Abbott", user_id: 2)
Post.create(header: "Dwight is mauled by a bear", story: "While working in the beet field, Dwight gets mauled by a Pennsylvania black bear. He is in a vegetative state on life support in the hospital. Angela seizes this opportunity to stake a legal claim as rightful heir to the Schrute Farms Estate. She and Mose begin a passionate love affair.", username: "Tiffany Treat", user_id: 3)
Post.create(header: "Karen gets revenge", story: "End of season 3...Michael and Jan are both fired. Karen (recently dumped by Jim) is promoted to Regional Manager of the Scranton branch. She vows to make life hell for Jim and Pam.", username: "Ann Perkins", user_id: 4)
Post.create(header: "Michael is arrested for DUI after he almost kills Meredith", story: "Beginning of season 4...Michael is miserable after Jan moves in. He is caught in a downward spiral, drinking heavily all day. He is drunk when he pulls into the parking lot and hits Meredith with his car. Jan refuses to bail him out.", username: "Trebek", user_id: 5)

# 20.times do 
#     post = Post.new
#     post.header = Faker::Creature::Animal.name 
#     post.story = Faker::Quote.famous_last_words
#     post.user = User.all.sample
#     post.save
# end

25.times do
    like = Like.new
    like.user = User.all.sample
    like.post = Post.all.sample
    like.save
end