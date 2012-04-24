class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :roundtable_id
      t.integer :member_id

      t.timestamps
    end
  end
end
