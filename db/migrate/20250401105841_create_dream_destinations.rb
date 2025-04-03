class CreateDreamDestinations < ActiveRecord::Migration[7.2]
  def change
    create_table :dream_destinations do |t|
      t.string :location
      t.text :reason
      t.string :goal

      t.timestamps
    end
  end
end
