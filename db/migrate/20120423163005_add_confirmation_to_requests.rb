class AddConfirmationToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :confirmation, :boolean

  end
end
