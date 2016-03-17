class Round < ActiveRecord::Base
	
	has_many    :guesses, dependent: :destroy
	has_many    :cards, :through => :guesses
	belongs_to  :user
	belongs_to  :deck

	def current_card
		guessed_cards  = self.guesses.pluck(:card_id)
		missing_cards = self.deck.cards.reject { |u| guessed_cards.include?(u.id) }
		return missing_cards.first
	end

	def complete?
		self.deck.cards.size == self.guesses.size
	end

end
