class Location < ActiveRecord::Base
  belongs_to :located, :polymorphic => true

  def self.filtered_by type 
    belongs_to type, :foreign_key => :located_id, :foreign_type => type.to_s.capitalize
    where(:located_type => type.to_s.capitalize).joins(type).includes(:located)
  end

  geocoded_by :address
  before_validation :geocode, :if => :changed?
end