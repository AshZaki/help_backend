class Api::V1::AuthenticationController < ApplicationController

	def create
		 @user = User.find_by(username: params[:username])
	    if @user && @user.authenticate(params[:password])
	      render json: {
	          message: "correct username and password",
	          error: false,
	          user: @user,
	          token: encode({user_id: @user.id})
	        }, status: :accepted
	    else
	      render json: {
	        error: true
	      }, status: :unauthorized
	    end
	end
end
