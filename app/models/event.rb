class Event < ActiveRecord::Base
  has_one :location, as: :located, dependent: :destroy
  accepts_nested_attributes_for :location

  scope :price_over, lambda{|p| where('events.price >= ?', p) }
end
