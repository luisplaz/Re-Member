class Deck < ActiveRecord::Base

	before_destroy :destroy_cards

	belongs_to  :user
	has_many    :cards, dependent: :delete_all
	has_many    :rounds

	validates :name, presence: true

	private

	def destroy_cards
	  self.cards.delete_all   
	end
	
end
