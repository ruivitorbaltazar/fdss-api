class ChangesInCommentsAndPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :comments, :post_id

    create_table :post_comments do |t|
      t.references :post, null: false, foreign_key: true
      t.references :comment, null: false, foreign_key: true

      t.timestamps
    end

    create_table :comment_comments do |t|
      t.references :parent_comment, foreign_key: { to_table: :comments }
      t.references :child_comment, foreign_key: { to_table: :comments }

      t.timestamps
    end
  end
end
