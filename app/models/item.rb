class Item < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes, dependent: :destroy
  has_many :iine_users, through: :likes, source: :user

  mount_uploader :image, ImageUploader

  def iine?(user)
    iine_users.include?(user)
  end

end