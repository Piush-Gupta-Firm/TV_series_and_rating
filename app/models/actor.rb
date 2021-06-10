class Actor < ApplicationRecord
	has_many :menifests
	has_many :series, :through => :menifests
end
