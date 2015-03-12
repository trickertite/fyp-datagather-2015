class UsersController < ApplicationController
	def index

	end

	def new
	end

	def create
		puts '###############################################'
		puts 'hello world'
		redirect_to users_path
	end

	def show

	end
end
