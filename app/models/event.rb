class Event < ApplicationRecord
	has_many :users, :through => :requests
	has_many :requests
end
