class Card < ActiveRecord::Base
	
	has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
	belongs_to               :deck
	has_many                 :guesses
	has_and_belongs_to_many  :rounds, :through => :guesses

  	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
