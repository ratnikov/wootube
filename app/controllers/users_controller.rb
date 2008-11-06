class UsersController < ApplicationController
  def index
    @users = Users.find :all
  end

  def new
    @user = Users.new
  end

  def create
    @user = Users.new params[:users]
    if @user.save
      redirect_to user_path(@user)
    else
      render :action => 'new'
    end
  end

  def show
    @user = Users.find params[:id] 
  end
end
