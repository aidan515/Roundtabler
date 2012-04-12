class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :description
      t.string :interest_1
      t.string :interest_2
      t.string :hobby_1
      t.string :hobby_2
      t.string :employer
      t.date :birthday

      t.timestamps
    end
  end
end
