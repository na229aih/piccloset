class UsersController < ApplicationController

  def show
    @nickname = current_user.nickname
    @items = Item.where(user_id: current_user.id).order("id DESC")
  end

end
