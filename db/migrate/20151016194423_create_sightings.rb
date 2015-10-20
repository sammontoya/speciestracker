class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.string :date
      t.string :latitude
      t.string :longitude
      t.integer :species_id

      t.timestamps null: false
    end
  end
end
