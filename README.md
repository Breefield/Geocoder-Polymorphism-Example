Geocoder-Polymorphism-Example
=============================

The code from my blog post: http://www.breefield.com/essays/polymorphic-geocoder

To play with polymorphic joins on a geocoded Location model do the following
Clone the repo, it runs on Sqlite, so no need to setup a DB. 
Run ```rake db:migrate``` then ```rake db:seed```
Now run ```rails console``` and then try this out:

```ruby
Location.near('San Francisco', 50).filter_by(:event).where('events.price <= ?', 20)
```

Know that ```Location``` has a polymorphic relationship with both ````Event``` and ```Venue```.
```ruby
class Location < ActiveRecord::Base
  belongs_to :located, :polymorphic => true
end
```
