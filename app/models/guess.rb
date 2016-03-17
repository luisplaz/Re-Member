class Guess < ActiveRecord::Base

	has_one    :user, :through => :round
	belongs_to :round
	belongs_to :card

	validates  :answer, presence: true

	def right?
		self.answer == "YES"
	end

	def wrong?
		self.answer == "NO"
	end


end
