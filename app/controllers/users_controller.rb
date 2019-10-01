class UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @items = Item.where(user_id: params[:id]).order("id DESC")
  end

end
