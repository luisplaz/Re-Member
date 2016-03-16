class RoundsController < ApplicationController

	def create
		@round = Round.new(deck_id: params[:deck_id],user:current_user)
		if @round.save
			redirect_to round_path(@round)
		end
	end

	def show
		@round = Round.includes(:guesses, deck: [:cards]).find(params[:id])
	end
	
end