class Comment < ApplicationRecord
  bolongs_to :user
  belongs_to :item
end
