class DetailsController < ApplicationController
	
	def new
    prepare_categories
		@detail = Detail.new
    @detail.programs.build
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
    		params.require(:detail).permit!
    		#params.require(:details).permit(:details,:title,:description,:priceNumber,:pricePer,
    			#:whatInclude,:whatExclude,:groupSize,:durationDayOrHour,:availability,:additionalInfo
    			#)
  		end
      def prepare_categories
      @categories = Category.all
    end



end
