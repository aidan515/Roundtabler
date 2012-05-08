class RemoveSwitchFromMembers < ActiveRecord::Migration
  def up
    remove_column :members, :switch
      end

  def down
    add_column :members, :switch, :string
  end
end
