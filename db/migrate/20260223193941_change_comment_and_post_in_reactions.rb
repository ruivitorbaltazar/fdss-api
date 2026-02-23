class ChangeCommentAndPostInReactions < ActiveRecord::Migration[7.0]
  def change
    change_column_null :reactions, :post_id, true
    change_column_null :reactions, :comment_id, true
  end
end
