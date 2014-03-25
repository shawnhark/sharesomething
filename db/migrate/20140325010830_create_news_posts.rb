class CreateNewsPosts < ActiveRecord::Migration
  def change
    create_table :news_posts do |t|
      t.string :title
      t.string :link_url
      t.string :description
      t.string :image_url
      t.integer :category_id
      t.timestamps
    end
  end
end
