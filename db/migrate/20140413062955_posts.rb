class Posts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :post_url
      t.string :description
      t.string :image
      t.integer :category_id
      t.timestamps
    end
  end
end
