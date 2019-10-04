class LikesController < ApplicationController

  before_action :set_variables

  def create
    like = current_user.likes.new(item_id: @item.id)
    like.save
    @item.reload
  end

  def destroy
    like = current_user.likes.find_by(item_id: @item.id)
    like.destroy
    @item.reload
  end

  private

  def set_variables
    @item = Item.find(params[:item_id])
  end
  
end
