class AddCoordinatesToEntries < ActiveRecord::Migration[7.2]
  def change
    add_column :entries, :latitude, :float
    add_column :entries, :longitude, :float
  end
end
