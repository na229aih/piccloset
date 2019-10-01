class ItemsController < ApplicationController

  before_action :move_to_root, except: [:index, :show]

  def index
    @items = Item.includes(:user).order("id DESC")
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(image: item_params[:image], detail: item_params[:detail], user_id: current_user.id)
    redirect_to "/"
  end

  def show
    @item = Item.find(params[:id])
    @comment = Comment.new
    @comments = @item.comments.includes(:user)
  end

  private
  def item_params
    params.require(:item).permit(:image, :detail)
  end

  def move_to_root
    redirect_to "/" unless user_signed_in?
  end

end
