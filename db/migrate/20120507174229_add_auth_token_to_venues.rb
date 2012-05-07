class AddAuthTokenToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :auth_token, :string

  end
end
