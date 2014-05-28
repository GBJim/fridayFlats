class DetailsController < ApplicationController
	
	def new
		@detail = Detail.new
	end

	def create
		#render plain: params[:details].inspect	
		@detail = Detail.new(detail_params)
 
  		if @detail.save
  		redirect_to @detail
  		else
  			render 'new'
  		end
	end


	def show
  	@details = Detail.find params[:id]
	end

	private
  		def detail_params
    		params.require(:details).permit!
    		#params.require(:details).permit(:details,:title,:description,:priceNumber,:pricePer,
    			#:whatInclude,:whatExclude,:groupSize,:durationDayOrHour,:availability,:additionalInfo
    			#)
  		end
end
