class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :upvote, default: 0
      t.integer :downvote, default: 0
      t.belongs_to :post
      t.belongs_to :user
    end
  end
end
