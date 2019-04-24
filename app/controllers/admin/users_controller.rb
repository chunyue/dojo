class Admin::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_admin

  def index
    @users = User.all

    if params[:id]
      @user = User.find(params[:id])
    end
  end
end
