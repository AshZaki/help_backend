class AnswerSerializer < ActiveModel::Serializer
	belongs_to :user
	belongs_to :room
  	attributes :id
end
