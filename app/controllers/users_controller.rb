class UsersController  < ApplicationController

	before_action :authenticate_user!

	def index
		
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save 
			flash[:notice] = "New User Created Successfully!"
			redirect_to new_user_path
		else
			render 'new'
		end
	end

private

	def user_params
		params.require(:user).permit(:fname, :lname, :email, :password, :password_confirmation, :admin, :apparel, :footwear, :gloves)
	end

end