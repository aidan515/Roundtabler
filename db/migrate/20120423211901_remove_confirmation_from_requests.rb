class RemoveConfirmationFromRequests < ActiveRecord::Migration
  def up
    remove_column :requests, :confirmation
      end

  def down
    add_column :requests, :confirmation, :boolean
  end
end
