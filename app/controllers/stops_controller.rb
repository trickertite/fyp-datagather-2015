class StopsController < ApplicationController
	skip_before_filter :verify_authenticity_token


	def index
		@user = User.find(params[:user_id])

		@stops = @user.stops.all
	end

	def new
		@user = User.new
	end

	def find_user
		if @user = User.where(['roll_num = ? and bus_num = ?', user_params[:roll_num], user_params[:bus_num]])
			redirect_to user_stops_path(@user.first)
		else
			render 'new'
		end
	end

	def update
		@user = User.find(params[:user_id])

		if @user.stops.update(params[:id], stop_params)
			render json: @user.locations.count
		else
			render :json => {'error': 'cannot save location into database'}
		end
	end

	private
	def stop_params
		params.require(:stop).permit(:stop_name, :lat, :long)
	end

	def user_params
		params.require(:user).permit(:roll_num, :bus_num)
	end
end
