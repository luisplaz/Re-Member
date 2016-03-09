class DecksController < ApplicationController

def show
	@deck = Deck.includes(:cards).find_by(id: params[:id])
end

def new
	@deck = Deck.new
end

def create
	@deck = Deck.new(deck_params)
	if @deck.save
		redirect_to deck_path(id: @deck.id)
	else
		@errors = @user.errors.full_messages
		render new_deck_path
	end
end

private

def deck_params
	deck_params = params.require(:deck).permit(:name).merge(user:current_user)
end

end