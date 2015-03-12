class LocationsController < ApplicationController
	skip_before_filter :verify_authenticity_token

	def index

	end
	
	def new

	end

	def create
		@user = User.find(params[:user_id])

		@location = @user.locations.build(location_params)

		if @location.save
			render json: @user.locations.count
		else
			render json: {'error': 'cannot save location into database'}
		end
	end

	private
	def location_params
		params.require(:location).permit(:lat, :long)
	end
end
