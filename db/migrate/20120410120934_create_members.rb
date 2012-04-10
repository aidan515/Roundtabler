class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :email
      t.string :password_digest
      t.string :city
      t.string :full_name

      t.timestamps
    end
  end
end
