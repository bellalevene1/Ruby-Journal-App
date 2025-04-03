class AddStatusToDreamDestinations < ActiveRecord::Migration[7.2]
  def change
    add_column :dream_destinations, :status, :string
  end
end
