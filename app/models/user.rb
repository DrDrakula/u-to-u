class User < ApplicationRecord
	has_many :friendships, foreign_key: "user_id"
	has_many :friends, through: :friendships, class_name: "User"


	def add_friend(friend)
		self.friends << friend
		friend.friends << self
	end


end
