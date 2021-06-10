class ShootingLocation < ApplicationRecord
	has_many :menifests
	has_many :series, :through => :menifests
end
