class AddSampleToRoundtables < ActiveRecord::Migration
  def change
    add_column :roundtables, :sample, :integer

  end
end
