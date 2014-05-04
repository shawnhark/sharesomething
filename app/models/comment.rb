class Comment < ActiveRecord::Base

  belongs_to :user
  belongs_to :post

  validates_presence_of :content
  
  def comment_id
    comment.id
  end
end