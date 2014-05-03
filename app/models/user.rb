class User < ActiveRecord::Base
  validates :user_name, presence: true, uniqueness: true
  after_validation :generate_slug
  has_secure_password validations: false

  def deactivate!
    update_column(:active, false)
  end

  def generate_slug
    self.slug = self.user_name.gsub(/[^0-9a-zA-Z]/, "_").downcase
  end

end