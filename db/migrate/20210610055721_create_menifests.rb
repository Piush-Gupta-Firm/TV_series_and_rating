class CreateMenifests < ActiveRecord::Migration[6.0]
  def change
    create_table :menifests do |t|
      t.references :actor, null: false, foreign_key: true
      t.references :series, null: false, foreign_key: true
      t.references :shooting_location, null: false, foreign_key: true

      t.timestamps
    end
  end
end
