# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'
require 'byebug'
require 'date'

# data_import from series file
series_csv_file = File.read('./tv_series.csv')
series_csv = CSV.parse(series_csv_file, :headers => true)
series_csv.each do |row|
	series = Series.find_or_create_by(name: row["TV Series"], genre: row["Genre"], no_of_seasons: row["No of seasons"].to_i, date_of_first_release: Date.parse(row["Date of First Release"]), director: row["Director"])
	actor = Actor.find_or_create_by(name: row["Actor"])
	shooting_location = ShootingLocation.find_or_create_by(city: row["Shoot location"], country: row["Country"])
	series.menifests.create(series: series, actor: actor, shooting_location: shooting_location)
end


# data_import from review file
review_csv_file = File.read('./review.csv')
review_csv = CSV.parse(review_csv_file, :headers => true)
review_csv.each do |row|
	series = Series.find_by(name: row["TV Series"])
	user = User.find_or_create_by(name: row["User"])
	series.reviews.create(series_id: series.id, user_id: user.id, stars: row["Stars"].to_i, review_comment: row["Review"])
end