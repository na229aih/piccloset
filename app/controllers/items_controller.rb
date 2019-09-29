class ItemsController < ApplicationController

  before_action :move_to_root, except: :index

  def index
    @items = Item.all.order("id DESC")
  end

  def new
    @item = Item.new
  end

  def create
    Item.create(item_params)
    redirect_to "/"
  end

  private
  def item_params
    params.require(:item).permit(:name, :image, :detail)
  end

  def move_to_root
    redirect_to "/" unless user_signed_in?
  end

end
