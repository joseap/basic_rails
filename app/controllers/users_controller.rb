class UsersController < ApplicationController
	def index
	end

	def new
		@user = User.new
	end

	def create 
		@user = User.create(params.require(:user).permit(:fname, :lname, :email, :password))
		redirect_to create_user_path
	end

	def edit
		@user = User.find params[:id]
	end

	def update 
		@user = User.find params[:id]
		@user = User.update.require(:user).permit(:fname, :lname, :email, :password)
		redirect_to home_index_path	
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		redirect_to home_index_path
	end

end
