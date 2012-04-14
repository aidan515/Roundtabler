class CreateRoundtables < ActiveRecord::Migration
  def change
    create_table :roundtables do |t|
      t.string :topic
      t.integer :attendee_number
      t.date :dinner_on
      t.time :kick_off

      t.timestamps
    end
  end
end
