class User < ApplicationRecord
	has_many :reviews
	has_many :series, :through => :reviews
end
