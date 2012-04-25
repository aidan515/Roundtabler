class RemoveCityFromMembers < ActiveRecord::Migration
  def up
    remove_column :members, :city
      end

  def down
    add_column :members, :city, :string
  end
end
