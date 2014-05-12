class Post < ActiveRecord::Base
belongs_to :category
belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
has_many :comments

end