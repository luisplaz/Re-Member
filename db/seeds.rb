# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


num = 1
Seeduser = User.create(username:"luisplaz", email:"luisplaz@hotmail.com", password_digest:"password")
Seeddeck = Deck.create(name:"Deck", user: Seeduser)
binding.pry
SeedRound = Round.create(user:Seeduser, deck:Seeddeck)
5.times do
	SeedCard = Card.create(name:"Card#{num}", title: "Title#{num}", description: "Description#{num}", deck: Deck)
	Guess.create(card:SeedCard,round:SeedRound,answer:"True")
	num += 1
end
