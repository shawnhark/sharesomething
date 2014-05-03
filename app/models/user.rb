class User < ActiveRecord::Base

  def deactivate!
    update_column(:active, false)
  end
end