# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Venue.create(name: 'House', location_attributes: {address: '2295 Harrison St San Francisco, CA 94110'})
Venue.create(name: 'Work', location_attributes: {address: '3126 16th St. San Francisco, CA 94103'})
Venue.create(name: 'Gym', location_attributes: {address: '1200 Van Ness Ave San Francisco, CA 94109'})

Event.create(price: 10, location_attributes: {address: '2295 Harrison St San Francisco, CA 94110'})
Event.create(price: 20, location_attributes: {address: '3126 16th St. San Francisco, CA 94103'})
Event.create(price: 5, location_attributes: {address: '1200 Van Ness Ave San Francisco, CA 94109'})