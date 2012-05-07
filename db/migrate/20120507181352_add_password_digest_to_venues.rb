class AddPasswordDigestToVenues < ActiveRecord::Migration
  def change
    add_column :venues, :password_digest, :string

  end
end
