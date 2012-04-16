class AddVenueIdToRoundtables < ActiveRecord::Migration
  def change
    add_column :roundtables, :venue_id, :integer

  end
end
