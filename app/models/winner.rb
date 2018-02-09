class Winner < ApplicationRecord
	belongs_to :competitor

	def self.winwin
		if Competitor.includes(:winners).where(:winners => {competitor_id: nil}).count >=5
  			true
  		else
  			false	
  		end
	end

	def self.competitors
		Competitor.includes(:winners).where(:winners => {competitor_id: nil})
	end

	def self.count_competitors
		self.competitors.count
	end

end
