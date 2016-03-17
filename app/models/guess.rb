class Guess < ActiveRecord::Base

	has_one    :user, :through => :round
	belongs_to :round
	belongs_to :card

	validates  :answer, presence: true

end
