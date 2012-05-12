class AddLongitudeAndLatitudeAndGmapsToDescriptions < ActiveRecord::Migration
  def change
    add_column :descriptions, :longitude, :float

    add_column :descriptions, :latitude, :float

    add_column :descriptions, :gmaps, :boolean

  end
end
