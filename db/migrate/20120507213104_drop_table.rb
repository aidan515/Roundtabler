class DropTable < ActiveRecord::Migration
  def up
    drop_table :venues
  end

  def down
  end
end
