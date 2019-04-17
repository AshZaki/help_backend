class RoomSerializer < ActiveModel::Serializer
	belongs_to :user
	has_many :answers
	
  	attributes :id
end
