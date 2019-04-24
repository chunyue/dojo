class Admin::UsersController < ApplicationController
  before_action :authenticate_user!
  befote_action :authenticate_admin
  
end
