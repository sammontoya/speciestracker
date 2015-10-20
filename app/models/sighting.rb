class Sighting < ActiveRecord::Base
  belongs_to :species

  validates :date, :presence => true
  validates :longitude, :presence => true
  validates :latitude, :presence => true
  validates :species_id, :presence => true
end
