class RemoveCityFromVenues < ActiveRecord::Migration
  def up
    remove_column :venues, :city
      end

  def down
    add_column :venues, :city, :string
  end
end
