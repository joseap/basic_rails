class UsersController < ApplicationController
# ======== INDEX OF POSTS ======== #
	def index
		@users = User.all
		if @users.present?
			flash[:notice] = "Here's your list of users"
		else
			flash[:alert] = "No users saved"
		end	 
	end

	# ======== DISPLAYS POST BY ID ======== #
	def show
		@user = User.find(params[:id])
	end

	# ======== 'GET' PAGE SHOWING THE CREATE POST PAGE ======== #
	def new
		@user = User.new
	end

	# ======== 'POST' PAGE TO CREATE A NEW POST ======== #
	def create 
		@user = User.create(params.require(:user).permit(:fname, :lname, :email, :password))
		flash[:done] = "New user created"
		redirect_to home_index_path
	end

	# ======== 'GET' PAGE TO UPDATE POST INFO ======== #
	def edit
		@user = User.find(params[:id])
	end

	# ======== 'PUT' PAGE TO UPDATE (REPLACE) POST INFO ======== #
	def update
		@user = User.find(params[:id])
		@user.update(params.require(:user).permit(:fname, :lname, :email, :password))
		flash[:success] = "Account updated"
		redirect_to home_index_path
	end

	# ======== SEEK & DESTROY ======== #
	def destroy
		@user = User.find(params[:id])
		@user.destroy
		flash[:destroyed] = "User deleted"
		redirect_to home_index_path
	end
end
