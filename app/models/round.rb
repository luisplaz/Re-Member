class Round < ActiveRecord::Base

	before_destroy :destroy_guesses

	belongs_to  :user
	belongs_to  :deck
	has_many    :guesses, dependent: :delete_all
	has_many    :cards, :through => :guesses

	def current_card
		guessed_cards  = self.guesses.pluck(:card_id)
		missing_cards = self.deck.cards.reject { |u| guessed_cards.include?(u.id) }
		return missing_cards.first
	end

	def complete?
		self.deck.cards.size == self.guesses.size
	end

	private

	def destroy_guesses
		self.guesses.delete_all    
	end

end
