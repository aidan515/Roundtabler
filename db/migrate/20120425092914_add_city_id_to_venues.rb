class AddCityIdToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :city_id, :integer

  end
end
