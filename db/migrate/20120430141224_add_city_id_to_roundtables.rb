class AddCityIdToRoundtables < ActiveRecord::Migration
  def change
    add_column :roundtables, :city_id, :integer

  end
end
