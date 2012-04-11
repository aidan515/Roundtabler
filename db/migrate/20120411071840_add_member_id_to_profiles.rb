class AddMemberIdToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :member_id, :string

  end
end
