class ChangeVenueAndEvent < ActiveRecord::Migration
  def up
    remove_column :events, :name
    remove_column :venues, :price

    add_column :events, :price, :integer
    add_column :venues, :name, :string
  end

  def down
    add_column :events, :name, :string
    add_column :venues, :price, :integer

    remove_column :events, :price
    remove_column :venues, :name
  end
end
