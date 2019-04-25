class AnswerSerializer < ActiveModel::Serializer
	belongs_to :room
  	attributes :id, :room_id, :answer, :result
end
