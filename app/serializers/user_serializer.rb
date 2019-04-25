class UserSerializer < ActiveModel::Serializer
	has_many :rooms

  	attributes :id , :username, :first_name, :last_name, :email
end
