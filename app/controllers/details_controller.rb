class DetailsController < ApplicationController
	
	def new
	end

	def create
		render plain: params[:details].inspect	

	end

end
