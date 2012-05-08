class AddVenueIdToDescription < ActiveRecord::Migration
  def change
    add_column :descriptions, :venue_id, :integer

  end
end
