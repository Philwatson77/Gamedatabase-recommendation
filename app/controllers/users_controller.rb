class UsersController < ApplicationController
  before_action :check_for_admin, :only => [:index]

  def index
    @users = User.all 
  end

  def new
    @users = User.new

  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path # you can redirect wherever you want
    else
      render :new # show them the form again so they can try again
    end
  end


  def destroy
    @user = User.find params[:id]
    user.destroy
    redirect_to users_index
  end

  private
  def user_params
  params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
