class CardsController < ApplicationController

	def new
		@card = Card.new
		@deck = Deck.find(params[:deck_id])
	end

	def create
		@card = Card.new(card_params)
		if @card.save
			redirect_to deck_path(id: @card.deck_id)
		else
			@errors = @user.errors.full_messages
			render new_deck_path
		end
	end

	def destroy
		Card.find(params[:id]).destroy
    	redirect_to user_path(current_user)
	end

	private

	def card_params
		card_params = params.require(:card).permit(:name, :title, :description,:deck_id)
	end

end