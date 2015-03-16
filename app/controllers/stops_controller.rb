class StopsController < ApplicationController
	skip_before_filter :verify_authenticity_token


	def index
		@user = User.find(params[:user_id])

		@stops = @user.stops.all
	end

	def update
		@user = User.find(params[:user_id])

		if @user.stops.update(stop_params)
			render json: @user.locations.count
		else
			#render :json => {'error': 'cannot save location into database'}
			render nothing: true
		end
	end

	private
	def stop_params
		params.require(:stop).permit(:stop_name, :lat, :long, :user_id)
	end
end
