class ChangeCommentComments < ActiveRecord::Migration[7.0]
  def change
    change_column_null :comment_comments, :parent_comment_id, false
    change_column_null :comment_comments, :child_comment_id, false
  end
end
