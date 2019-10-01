class CommentsController < ApplicationController

  def create
    Comment.create(text: params[:comment][:text], item_id: params[:item_id], user_id: current_user.id)
    redirect_to "/items/#{params[:item_id]}"
  end

  # private
  # def comment_params
  #   params.require(:comment).permit(:text, :item_id)
  # end

end
