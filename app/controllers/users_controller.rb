class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @items = Item.where(user_id: params[:id]).order("id DESC")
    respond_to do |format|
      format.html
      format.json
    end
  end

end
