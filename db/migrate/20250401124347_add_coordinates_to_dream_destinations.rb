class AddCoordinatesToDreamDestinations < ActiveRecord::Migration[7.2]
  def change
    add_column :dream_destinations, :latitude, :float
    add_column :dream_destinations, :longitude, :float
  end
end
