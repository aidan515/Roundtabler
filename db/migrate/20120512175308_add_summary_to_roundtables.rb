class AddSummaryToRoundtables < ActiveRecord::Migration
  def change
    add_column :roundtables, :summary, :text

  end
end
