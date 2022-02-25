class HwahaeComment < ApplicationRecord
  belongs_to :user
  belongs_to :hwahae_content
end
