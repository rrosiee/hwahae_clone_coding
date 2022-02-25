class Product < ApplicationRecord
	has_many :product_reviews, :through => :users
	has_many :hwahae_carts, :through => :users
	has_many :hwahae_orders, :through => :users
	has_one_attached :image
end
