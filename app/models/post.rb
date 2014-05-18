class Post < ActiveRecord::Base
belongs_to :category
belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
has_many :comments


  def self.search_by_title(search_term)
    return [] if search_term.blank?
    where("title LIKE?", "%#{search_term}%").order("created_at DESC")
    where("description LIKE?", "%#{search_term}%").order("created_at DESC")
  end
end