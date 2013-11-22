class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string    :address
      t.float     :latitude
      t.float     :longitude
      t.integer   :located_id
      t.string    :located_type

      t.timestamps
    end
  end
end
