class Admin::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_admin

  def index
    @users = User.all

    if params[:id]
      @user = User.find(params[:id])
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to admin_users_path
      flash[:notice] = "Change role status successfully!"
    else
      @category = Category.all
      render :index  
    end  
  end

  private

  def user_params
    params.require(:user).permit(:role)
  end
end
