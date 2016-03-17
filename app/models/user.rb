class User < ActiveRecord::Base
	
	  has_secure_password
	  has_many :decks
	  has_many :rounds

	  validates :username, presence: true, length: {in: 8..20}
	  validates :email, presence: true

	  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create

end
