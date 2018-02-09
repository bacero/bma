class WinnersController < ApplicationController
  def create
  	if Winner.winwin 
  		competidores = Competitor.includes(:winners).where(:winners => {competitor_id: nil})
  		cantidad = competidores.count
  		if w=Winner.create(competitor_id: competidores.offset(rand(cantidad)).first.id)
  			redirect_to w
  		else
  			redirect_to '/competitors'
  		end	
  	else
  		
	end
  end

  def show
  	@winner = Winner.find(params[:id])
  end

  def index
    @winners = Winner.all
  end
end
