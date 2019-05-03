class Api::V1::UsersController < ApplicationController

	def index
		render json: User.all
	end

	def profile
		token = request.headers['Authentication'].split(' ')[1]
	    payload = decode(token)
	    render json: User.find(payload["user_id"]), status: :accepted
	end

	def create
	    @user = User.create(user_params)
	    render json: {
	      user: @user,
	      token: encode({user_id: @user.id})
	    }, status: accepted
	end

end
