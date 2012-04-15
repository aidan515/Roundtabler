class AddMemberIdToRoundtables < ActiveRecord::Migration
  def change
    add_column :roundtables, :member_id, :integer

  end
end
