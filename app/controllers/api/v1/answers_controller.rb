class Api::V1::AnswersController < ApplicationController

	def index
		render json: Answer.all
	end

	def show
		render json: Answer.find(params[:id])
	end

end
