class Deck < ActiveRecord::Base
	belongs_to :user
	has_many :cards
	has_many :guesses, :through => :cards
	has_many :rounds, :through => :guesses

	validates :name, presence: true
end
