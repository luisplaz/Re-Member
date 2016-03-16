# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

num = 1
testUser = User.create(
	username: "luisplaz", 
	email: "luisplaz@hotmail.com", 
	password: "password")

testDeck = Deck.create(
	name: "Test Deck", 
	user: testUser)

testRound = Round.create(
	user: testUser,
	deck: testDeck,
	)

5.times do
	Guess.create(card:Card.create(name:"Card #{num}", title: "Title #{num}", description: "Description #{num}", deck: testDeck),round:testRound,answer:"True")
	num += 1
end
