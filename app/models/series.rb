class Series < ApplicationRecord
	has_many :menifests
	has_many :actors, :through => :menifests
	has_many :shooting_locations, :through => :menifests
	
	has_many :users, :through => :reviews

	has_many :reviews
end
