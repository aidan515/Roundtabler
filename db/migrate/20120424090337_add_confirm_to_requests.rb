class AddConfirmToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :confirm, :string

  end
end
