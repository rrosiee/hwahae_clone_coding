class HwahaeContent < ApplicationRecord
	has_many :hwahae_comments, :through => :users
	has_many :hwahae_comments, dependent: :destroy
end
