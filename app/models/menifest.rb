class Menifest < ApplicationRecord
  belongs_to :actor
  belongs_to :series
  belongs_to :shooting_location
end
