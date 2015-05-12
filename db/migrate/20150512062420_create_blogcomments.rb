class CreateBlogcomments < ActiveRecord::Migration
  def change
    create_table :blogcomments do |t|
      t.integer :user_id
      t.integer :post_id
      t.text :comment_content

      t.timestamps null: false
    end
  end
end