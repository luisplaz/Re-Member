# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

testUser = User.create(
	username: "luisplaz", 
	email: "luisplaz@hotmail.com", 
	password: "password")

3.times do

testDeck = Deck.create(
	name: Faker::University.name, 
	user: testUser)

testRound = Round.create(
	user: testUser,
	deck: testDeck,
	)

5.times do
	Card.create(
		name: Faker::Name.name, 
		title: Faker::Company.profession, 
		description: Faker::Company.buzzword, 
		deck: testDeck, 
		avatar:Faker::Avatar.image
		)
end

end
