class UsersController < ApplicationController

	def index
	end


	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to('/boards')
		else
		redirect_to('/signup')
		end
	end

private

	def user_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation)
	end

end
