class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.integer :price

      t.timestamps
    end
  end
end
