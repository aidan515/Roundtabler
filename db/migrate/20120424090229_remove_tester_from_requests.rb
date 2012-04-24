class RemoveTesterFromRequests < ActiveRecord::Migration
  def up
    remove_column :requests, :tester
      end

  def down
    add_column :requests, :tester, :string
  end
end
