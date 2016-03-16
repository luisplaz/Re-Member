class Card < ActiveRecord::Base

	belongs_to               :deck
	has_many                 :guesses
	has_and_belongs_to_many  :rounds, :through => :guesses

end
