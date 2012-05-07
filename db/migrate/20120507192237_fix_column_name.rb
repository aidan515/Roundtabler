class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :roundtables, :member_id, :user_id
    rename_column :requests, :member_id, :user_id
  end
end
