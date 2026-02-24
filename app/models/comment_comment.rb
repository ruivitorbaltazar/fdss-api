class CommentComment < ApplicationRecord
  belongs_to :parent_comment, class_name: 'Comment'
  belongs_to :child_comment, class_name: 'Comment'
end
