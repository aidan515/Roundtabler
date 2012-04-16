class AddVenueImageToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :venue_image, :string

  end
end
