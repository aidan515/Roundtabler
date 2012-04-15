class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :r_type
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :post_code
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
