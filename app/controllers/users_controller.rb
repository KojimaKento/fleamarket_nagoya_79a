class UsersController < ApplicationController
  def show
  end

  def credit
    @user = User.find(params[:id])
  end

  def logout
    @user = User.find(params[:id])
  end
end
