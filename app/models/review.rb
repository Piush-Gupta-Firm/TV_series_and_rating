class Review < ApplicationRecord
	belongs_to :series
	belongs_to :user
end
