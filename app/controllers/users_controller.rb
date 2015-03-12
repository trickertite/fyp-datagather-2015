class UsersController < ApplicationController
	def index

	end

	def new
			@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to users_path
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
