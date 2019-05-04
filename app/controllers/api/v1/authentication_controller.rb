class Api::V1::AuthenticationController < ApplicationController

	def create
		 @user = User.find_by(username: params[:username])
	    if @user && @user.authenticate(params[:password])
	    	# puts encode({user_id: @user.id})
	      render json: {
	          message: "correct username and password",
	          error: false,
	          user: @user,
	          token: JWT.encode({user_id: @user.id}, 'my_s3cr3t')
	        }, status: :accepted
	    else
	      render json: {
	        error: true
	      }, status: :unauthorized
	    end
	end
end
