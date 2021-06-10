class CreateSeries < ActiveRecord::Migration[6.0]
  def change
    create_table :series do |t|
      t.string :name
      t.string :genre
      t.integer :no_of_seasons
      t.string :director
      t.date :date_of_first_release

      t.timestamps
    end
  end
end
