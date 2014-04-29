class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :full_name
      t.string  :email
      t.string  :user_name
      t.string  :password_digest
      t.string  :slug
      t.boolean :active,  default: true
      t.string  :time_zone
      t.string  :token
      t.boolean :admin, default: false
      t.string  :customer_token
      t.boolean :premium, default: false
      t.timestamps
    end
  end
end
