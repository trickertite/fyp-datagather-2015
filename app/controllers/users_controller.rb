class UsersController < ApplicationController
	def index

	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to new_user_location_path(@user)
		else
			render 'new'
		end
	end

	def show

	end

	private

	def user_params
		params.require(:user).permit(:roll_num, :bus_num)
	end
end
