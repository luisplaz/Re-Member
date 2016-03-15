class GuessesController < ApplicationController

	def new
		@guess = Guess.new
	end

	def create
		@guess = Guess.create(guess_params)
		if @guess.save
			redirect_to round_path(@guess.round)
		end
	end
	
	private

	def guess_params
		guess_params = params.permit(:round_id, :card_id, :answer)
	end
end