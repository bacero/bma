class TownsController < ApplicationController
	def index
		s=params[:state_id]
		@towns = Town.select(:id,:name).where("state_id=#{s}").order(:name)
    	render json: @towns
	end
end
