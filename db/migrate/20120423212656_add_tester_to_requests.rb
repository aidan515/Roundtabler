class AddTesterToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :tester, :string

  end
end
