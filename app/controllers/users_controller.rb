class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @items = Item.where(user_id: params[:id]).order("id DESC")
  end

  def followings
    @user = User.find(params[:id])
  end

  def followers
    @user = User.find(params[:id])
  end

end
