class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :product_review, :through => :products
  has_many :hwahae_coupons, dependent: :destroy
  has_many :requests
  has_many :events, :through => :requests
  has_many :hwahae_comments, :through => :hwahae_contents
  has_many :hwahae_carts, :through => :products
  has_many :hwahae_orders, :through => :products
	
end
