class LikesController < ApplicationController

  def create
    @item = Item.find(params[:item_id])
    unless @micropost.iine?(current_user)
      @item.iine(current_user)
      respond_to do |format|
        format.html
        format.js
      end
  end

  def destroy
    @item = Like.find(params[:id]).item
    @item.uniine(current_user)
    if @item.iine?(current_user)
      @item.uniine(current_user)
      respond_to do |format|
        format.html
        format.js
      end
  end
  
end
