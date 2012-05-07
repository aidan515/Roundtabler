class FixAnotherColumn < ActiveRecord::Migration
  def change
     rename_column :profiles, :member_id, :user_id
   end
end
