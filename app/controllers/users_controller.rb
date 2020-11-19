class UsersController < ApplicationController
  def show
  end

  def credit
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
  end
end
