class Comment < ActiveRecord::Base
  include Simplevote
  belongs_to :post
  belongs_to :creator, class_name: 'User', foreign_key: :user_id
  validates_presence_of :content  
  has_many :comments, -> { order("created_at DESC") }

  def comment_id
    comment.id
  end

  def post_id
    comment.post_id
  end

  def self.search_by_title(search_term)
    return [] if search_term.blank?
    where("content LIKE?", "%#{search_term}%").order("created_at DESC")
  end
end