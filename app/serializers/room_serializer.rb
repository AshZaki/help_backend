class RoomSerializer < ActiveModel::Serializer
	belongs_to :user
	has_many :answers
	
  	attributes :id, :topic, :password, :description, :type, :catagories, :user_id
end
