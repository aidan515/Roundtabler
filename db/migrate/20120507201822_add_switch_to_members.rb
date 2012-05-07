class AddSwitchToMembers < ActiveRecord::Migration
  def change
    add_column :members, :switch, :string

  end
end
