class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.string :r_type
      t.string :address_1
      t.string :address_2
      t.string :post_code
      t.string :phone_number
      t.string :venue_image

      t.timestamps
    end
  end
end
