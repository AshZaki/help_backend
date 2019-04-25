class User < ApplicationRecord
	has_many :rooms 
	has_many :answers, through: :rooms
end
