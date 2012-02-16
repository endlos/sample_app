class UsersController < ApplicationController

  def index
	@users = User.all
  end  
  def show
	@user = User.find(params[:id])
	@title = @user.name
  end
  
  def new
	  @user = User.new
	  @title = "Sign up"
  end

  def create
	#raise params[:user].inspect
	@user = User.new(params[:user])
	if @user.save
		##### En 2 lineas:
		#flash[:success] = "Welcome to the Sample App!"
		#redirect_to user_path(@user)  # Puede ser "@user" en vez de "user_path(@user)" 
		##### En 1 linea: 
		redirect_to user_path(@user), :flash => { :success => "Welcome to the Sample App!" }
	else
		@title = "Sign up"
		render 'new'
	end
  end

  
end
