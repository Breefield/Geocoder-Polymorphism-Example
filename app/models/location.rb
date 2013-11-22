class Location < ActiveRecord::Base
  belongs_to :located, :polymorphic => true

  geocoded_by :address
  before_validation :geocode, :if => :changed?
end