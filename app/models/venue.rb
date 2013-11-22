class Venue < ActiveRecord::Base
  has_one :location, as: :located, dependent: :destroy
  accepts_nested_attributes_for :location
end
