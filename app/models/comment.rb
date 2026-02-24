class Comment < ApplicationRecord
  belongs_to :user

  has_many :reactions

  has_many :post_comments
  has_many :posts, through: :post_comments
  has_many :comment_comments
  has_many :comments, through: :comment_comments
end
