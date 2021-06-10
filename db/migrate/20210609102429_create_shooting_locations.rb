class CreateShootingLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :shooting_locations do |t|
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
