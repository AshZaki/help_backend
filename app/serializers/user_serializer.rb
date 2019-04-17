class UserSerializer < ActiveModel::Serializer
	has_many :answers
  	attributes :id
end
