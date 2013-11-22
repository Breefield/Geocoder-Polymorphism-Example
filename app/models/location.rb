class Location < ActiveRecord::Base
  belongs_to :located, :polymorphic => true
  belongs_to :event, :foreign_key => :located_id, :foreign_type => 'Event'

  geocoded_by :address
  before_validation :geocode, :if => :changed?
end