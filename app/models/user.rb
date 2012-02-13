class User < ActiveRecord::Base
	attr_accessor :password
	attr_accessible :name, :email, :password, :password_confirmation
	
	email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

	validates :name,  :presence => true,
                     :length   => { :maximum => 50 }
	validates :email, :presence => true,
                     :format   => { :with => email_regex },
		     :uniqueness => { :case_sensitive => false }  # implicit ":uniqueness => true"
	validates :password, :presence => true,
				     :confirmation => true,
				     :length => { :within => 6..40 }
				     
	before_save :encrypt_password 
	
	private
	def encrypt_password
		# self because it's in the same User Class ;)
		self.encrypted_password = encrypt(password)
	end
	def encrypt(string)
		string # Not the final implementation!
	end
	
end
