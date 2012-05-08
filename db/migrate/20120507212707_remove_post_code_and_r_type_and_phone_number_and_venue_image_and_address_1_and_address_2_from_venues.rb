class RemovePostCodeAndRTypeAndPhoneNumberAndVenueImageAndAddress1AndAddress2FromVenues < ActiveRecord::Migration
  def up
    remove_column :venues, :post_code
        remove_column :venues, :r_type
        remove_column :venues, :phone_number
        remove_column :venues, :venue_image
        remove_column :venues, :address_1
        remove_column :venues, :address_2
      end

  def down
    add_column :venues, :address_2, :string
    add_column :venues, :address_1, :string
    add_column :venues, :venue_image, :string
    add_column :venues, :phone_number, :string
    add_column :venues, :r_type, :string
    add_column :venues, :post_code, :string
  end
end
