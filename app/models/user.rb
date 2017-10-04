class User < ApplicationRecord
	validates :name, 	presence: true,
										length: { maximum: 15 }

	has_many :friendships, foreign_key: "friender", class_name: "Friendship"
	has_many :friended,    through: :friendships
end
