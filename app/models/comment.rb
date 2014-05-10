class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  belongs_to :creator, class_name: 'User', foreign_key: :user_id

  validates_presence_of :content
  
  has_many :comments, -> { order("created_at DESC") }

  def comment_id
    comment.id
  end
end