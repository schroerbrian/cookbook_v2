class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new()
  end

  def create
    @user=User.new(params[:user])
    if @user.save
      UserMailer.welcome_email(@user).deliver
      flash[:success] = "Welcome to the Cook Book app!"
      sign_in @user
      redirect_to @user
    else
      render'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    if @user.save
      UserMailer.welcome_email(@user).deliver
      flash[:sucess] = "Your password has been changed."
      render new_session_path
    else
   flash[:error] = "Couldn't save!" 
    end
  end

  

end

